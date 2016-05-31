pushd /root/CA

openssl ca \
-extensions usr_cert \
-notext \
-md sha256 \
-keyfile private/rootca.key \
-cert certs/rootca.crt \
-in certs/ldap1.csr \
-out certs/ldap1.crt



chmod 444 certs/ldap1.crt


popd