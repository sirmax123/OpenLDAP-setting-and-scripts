

echo "sudoers:        ldap files" >> /etc/nsswitch.conf


N=`hostname | sed s/node-/""/g | sed s/.domain.tld/""/g`

apt-get install sudo-ldap -y


rm -f  /etc/sudo-ldap.conf
cp   ./sudo-ldap.conf /etc/sudo-ldap.conf

chown root:root  /etc/sudo-ldap.conf
chmod 600  /etc/sudo-ldap.conf

echo "BINDDN            uid=nssproxy-node${N},ou=service_users,dc=customer_organization,dc=fuel_domain" >>/etc/sudo-ldap.conf
echo "BINDPW            ${N}${N}${N}${N}" >>/etc/sudo-ldap.conf




