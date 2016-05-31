pushd /root/CA

openssl ca \
-extensions usr_cert \
-notext \
-md sha256 \
-keyfile private/rootca.key \
-cert certs/rootca.crt \
-in certs/ldap2.csr \
-out certs/ldap2.crt



chmod 444 certs/ldap2.crt


popd