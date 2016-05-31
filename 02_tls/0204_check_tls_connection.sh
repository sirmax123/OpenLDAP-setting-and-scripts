
gnutls-cli \
-p 636 ldap1 \
-d 1 \
--print-cert \
--x509cafile  /etc/ssl/certs/rootca.crt
