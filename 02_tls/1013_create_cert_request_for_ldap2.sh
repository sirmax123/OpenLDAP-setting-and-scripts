pushd /root/CA


openssl req \
-sha256 -new \
-key private/ldap2.key \
-out certs/ldap2.csr \
-subj /C=UA/ST=Kharkov/L=Kharkov/O=MirantisInc/OU=ServicesDepartment/CN=ldap2/emailAddress=mmaxur@mirantis.com


popd