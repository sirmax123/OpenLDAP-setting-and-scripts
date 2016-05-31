#!/bin/bash


cp rsync_logs.sh /usr/local/bin/
cp rsync_cron /etc/cron.d/
chown root:root /etc/cron.d/rsync_cron
chmod 600 /etc/cron.d/rsync_cron

/etc/init.d/cron restart
