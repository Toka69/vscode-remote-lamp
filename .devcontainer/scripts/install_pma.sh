#!/bin/bash

APACHE_DOCUMENT_ROOT=workdir
PHPMYADMIN_VERSION=define_version

#Delete old installation for rebuild
rm -rf $APACHE_DOCUMENT_ROOT/phpMyAdmin*

#Install PMA
wget -O /tmp/phpmyadmin.tar.gz https://files.phpmyadmin.net/phpMyAdmin/$PHPMYADMIN_VERSION/phpMyAdmin-$PHPMYADMIN_VERSION-all-languages.tar.gz
tar xfvz /tmp/phpmyadmin.tar.gz -C $APACHE_DOCUMENT_ROOT
mv $APACHE_DOCUMENT_ROOT/phpMyAdmin-$PHPMYADMIN_VERSION-all-languages $APACHE_DOCUMENT_ROOT/phpMyAdmin
mv $APACHE_DOCUMENT_ROOT/phpMyAdmin/config.sample.inc.php $APACHE_DOCUMENT_ROOT/phpMyAdmin/config.inc.php
sed -ri -e "s/localhost/127.0.0.1/" $APACHE_DOCUMENT_ROOT/phpmyadmin/config.inc.php

sudo chown -R www-data $APACHE_DOCUMENT_ROOT/phpMyAdmin