#!/bin/bash

sudo service mysql start
sudo service apache2 start
sudo bash /scripts/create_mysql_user.sh