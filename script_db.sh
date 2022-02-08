#!/bin/bash
ROOTPASSWD=Password&1
DBNAME=vagrant
DBUSER=vagrant
DBPASSWD=vagrantpass
echo "Creating new db $DBNAME"
mysql -uroot -p$ROOTPASSWD -e "CREATE DATABASE $DBNAME"
mysql -uroot -p$ROOTPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' identified by '$DBPASSWD'"
