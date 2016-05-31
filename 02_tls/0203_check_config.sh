ldapsearch -QLLLY EXTERNAL -H ldapi:/// -b cn=config -s base | grep -i tls



#olcTLSVerifyClient: never
#olcTLSCertificateFile: /etc/ldap/ssl/ldap1.crt
#olcTLSCertificateKeyFile: /etc/ldap/ssl/ldap1.key
#olcTLSCACertificateFile: /etc/ssl/certs/rootca.crt