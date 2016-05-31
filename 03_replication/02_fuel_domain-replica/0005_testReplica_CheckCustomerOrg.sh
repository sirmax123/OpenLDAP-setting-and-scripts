ldapsearch  -D "cn=admin,dc=fuel_domain" -w 'r00tme' -b 'dc=fuel_domain' -H ldaps://ldap1 '(objectclass=*)' > ./ldap1
ldapsearch  -D "cn=admin,dc=fuel_domain" -w 'r00tme' -b 'dc=fuel_domain' -H ldaps://ldap2 '(objectclass=*)' > ./ldap2

diff ./ldap1 ./ldap2