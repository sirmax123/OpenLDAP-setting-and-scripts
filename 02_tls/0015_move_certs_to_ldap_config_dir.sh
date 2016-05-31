pushd /root/CA

mkdir /etc/ldap/ssl
chown openldap:openldap /etc/ldap/ssl
chmod 0500 /etc/ldap/ssl
cp certs/ldap1.crt private/ldap1.key /etc/ldap/ssl


chown openldap:openldap /etc/ldap/ssl/{ldap1.crt,ldap1.key}
chmod 0400 /etc/ldap/ssl/{ldap1.crt,ldap1.key}

cp certs/rootca.crt /etc/ssl/certs/

chmod 0644 /etc/ssl/certs/rootca.crt

popd