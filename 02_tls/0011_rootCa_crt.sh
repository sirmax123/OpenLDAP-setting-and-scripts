
pushd /root/CA

openssl req \
-sha256 \
-new \
-x509 \
-days 3650 \
-extensions v3_ca \
-key private/rootca.key \
-out certs/rootca.crt \
-subj /C=UA/ST=Kharkov/L=Kharkov/O=MirantisInc/OU=ServicesDepartment/CN=ca-server/emailAddress=mmaxur@mirantis.com

chmod 444 certs/rootca.crt
chattr +i certs/rootca.crt

openssl x509 -in certs/rootca.crt -noout -text

popd

