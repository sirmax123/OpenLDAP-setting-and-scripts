#Продолжаем в том же каталоге /root/CA. Создадим закрытый ключ для сервера службы каталогов:


pushd /root/CA
openssl genrsa \
-out private/ldap1.key 4096


chmod 400 private/ldap1.key


popd