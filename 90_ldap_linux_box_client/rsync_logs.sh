#!/bin/bash 

/usr/bin/rsync -avz -e  "ssh  -o IdentityFile=/root/id_rsa_sync   -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" /var/log/sudosh/  sudoshsync@10.20.0.3:/home/sudoshsync/$(hostname -a)
/usr/bin/rsync -avz -e  "ssh  -o IdentityFile=/root/id_rsa_sync   -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" /var/log/sudosh/  sudoshsync@10.20.0.6:/home/sudoshsync/$(hostname -a)



