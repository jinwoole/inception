#!/bin/sh

chown -R mysql:mysql /var/lib/mysql

service mysql start

service mysql stop

exec mysqld_safe