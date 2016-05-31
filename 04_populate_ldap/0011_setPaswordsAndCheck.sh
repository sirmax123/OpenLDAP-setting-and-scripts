for N in `seq 1 4`

do
  echo user=nssproxy-node${N}
  ldappasswd -H ldaps://ldap -s ${N}${N}${N}${N} uid=nssproxy-node${N},ou=service_users,dc=customer_organization,dc=fuel_domain -D "cn=admin,dc=fuel_domain" -w 'r00tme'

  ldapsearch  -D "uid=nssproxy-node${N},ou=service_users,dc=customer_organization,dc=fuel_domain" -w ${N}${N}${N}${N} -b 'dc=fuel_domain' -H ldaps://ldap '(objectclass=*)'
done


