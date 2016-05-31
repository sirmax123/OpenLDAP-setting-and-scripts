mkdir /root/CA

chmod u=rwx,g=,o= /root/CA
pushd /root/CA
umask 066


mkdir certs crl newcerts private 
chmod 700 private
touch index.txt
echo 1000 > serial


# Create key pass = r00tme
openssl genrsa -aes256 -out private/rootca.key 4096
chmod 400 private/rootca.key
chattr +i private/rootca.key

popd