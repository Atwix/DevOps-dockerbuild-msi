#!/bin/bash
#
# Run system services
#

chown -R mysql:mysql /var/lib/mysql
service ssh start;
service mysql start;
service php7.1-fpm start;
service nginx start;
service postfix start;
bash
