pushd /root/CA


openssl req \
-sha256 -new \
-key private/ldap1.key \
-out certs/ldap1.csr \
-subj /C=UA/ST=Kharkov/L=Kharkov/O=MirantisInc/OU=ServicesDepartment/CN=ldap1/emailAddress=mmaxur@mirantis.com


popd