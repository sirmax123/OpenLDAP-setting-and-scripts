#ldapadd  -D "cn=admin,dc=fuel_domain" -w 'r00tme'  -H ldaps://ldap  < 0008_nssProxyUsers

ldapmodify -Y EXTERNAL  -H ldapi:/// < 0009_FixPermissionsAlowNSSReadPAsswords.ldif

#ldapadd  -Y EXTERNAL  -H ldapi:/// < 0010_SudoScheme.ldif


