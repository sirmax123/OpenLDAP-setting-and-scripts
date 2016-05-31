#!/bin/bash

apt-get update


cp rootca.crt /etc/ssl/certs/rootca.crt

dpkg -i sudosh2_2.0.1-1_amd64.deb

echo "/usr/bin/sudosh" >> /etc/shells
cp /etc/sudosh.conf.sample /etc/sudosh.conf
chmod +r /etc/sudosh.conf
mkdir -p /var/log/sudosh/
chown root:root /var/log/sudosh/
chmod a+rwx /var/log/sudosh/
#chattr +a /var/log/sudosh/

echo "" >> /etc/hosts
echo  "10.20.0.6       ldap2" >> /etc/hosts
echo  "10.20.0.3       ldap1" >> /etc/hosts
echo  "10.20.0.100     ldap" >> /etc/hosts
echo "" >> /etc/hosts

apt-cache update
DEBIAN_FRONTEND=noninteractive apt-get -y install libpam-ldap nscd ldap-utils libnss-ldapd


cp -f ldap_ldap.conf /etc/ldap/ldap.conf

N=`hostname | sed s/node-/""/g | sed s/.domain.tld/""/g`
mv /etc/nslcd.conf  /etc/nslcd.conf.back
cp ./nslcd.conf /etc/nslcd.conf
chmod 600 /etc/nslcd.conf



echo "binddn uid=nssproxy-node${N},ou=service_users,dc=customer_organization,dc=fuel_domain" >>/etc/nslcd.conf
echo "bindpw ${N}${N}${N}${N}" >>/etc/nslcd.conf




echo  "passwd:         ldap files" >>/etc/nsswitch.conf
echo  "group:          ldap files" >>/etc/nsswitch.conf
echo  "shadow:         ldap files" >>/etc/nsswitch.conf



echo "bindpw ${N}${N}${N}${N}" >>/etc/ldap.secret
chown root:root ldap.secret
chmod 600 /etc/ldap.secret

mv /etc/ldap.conf /etc/ldap.conf.back

cp ./ldap.conf /etc/ldap.conf
echo "rootbinddn uid=nssproxy-node${N},ou=service_users,dc=customer_organization,dc=fuel_domain" >> /etc/ldap.conf



echo "session    required   pam_mkhomedir.so skel=/etc/skel/ umask=0022" >> /etc/pam.d/common-account

/etc/init.d/nslcd  restart
/etc/init.d/nscd  restart


sed  -i  s/"PasswordAuthentication no"/"PasswordAuthentication yes"/ /etc/ssh/sshd_config
/etc/init.d/ssh restart


