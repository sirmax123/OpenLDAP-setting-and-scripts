pushd /root/CA

openssl ca \
-extensions usr_cert \
-notext \
-md sha256 \
-keyfile private/rootca.key \
-cert certs/rootca.crt \
-in certs/ldap.csr \
-out certs/ldap.crt



chmod 444 certs/ldap.crt


popd