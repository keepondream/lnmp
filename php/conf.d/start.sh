/usr/bin/python2 /usr/local/bin/supervisord -c /etc/supervisor/supervisord.conf &
/opt/bitnami/php/sbin/php-fpm
/etc/init.d/cron start
tail -f /dev/null

