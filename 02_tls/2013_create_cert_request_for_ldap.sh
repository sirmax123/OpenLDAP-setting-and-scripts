pushd /root/CA


openssl req \
-sha256 -new \
-key private/ldap.key \
-out certs/ldap.csr \
-subj /C=UA/ST=Kharkov/L=Kharkov/O=MirantisInc/OU=ServicesDepartment/CN=ldap/emailAddress=mmaxur@mirantis.com


popd