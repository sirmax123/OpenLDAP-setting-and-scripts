slapcat -b  cn=config | grep test

ldapmodify  -Y EXTERNAL  -H ldapi:// < 0006_addConfigReplication.ldif

slapcat -b  cn=config | grep test
