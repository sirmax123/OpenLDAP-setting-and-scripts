mkdir -p /var/lib/ldap_fuel_domain/
chown openldap:openldap /var/lib/ldap_fuel_domain/

ldapadd  -Y EXTERNAL -H ldapi:/// <  0002_createDatabase.ldif
