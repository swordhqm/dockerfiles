#!/bin/sh

set -e

echo "Starting the mysql daemon"
#service mysql start

#echo "navigating to volume /var/www"
#cd /var/www
#echo "Creating soft link"
#ln -s /opt/mysite mysite

#a2enmod headers
service apache2 restart

#a2ensite mysite.conf
#a2dissite 000-default.conf
service apache2 reload

if [ "$1" = '/bin/bash' ];then
    exec "$1"
else
    echo "done!!"
fi

exec "$@"
