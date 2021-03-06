#!/bin/bash

#cp -R /opt/bookmedik/* /bookmedik

sed -i "s/$this->user="root";/$this->user="$DATABASE_USER";/g" /bookmedik/core/controller/Database.php
sed -i "s/$this->pass="";/$this->pass="$DATABASE_PASSWORD";/g" /bookmedik/core/controller/Database.php
sed -i "s/$this->host="localhost";/$this->host="$DATABASE_HOST";/g" /bookmedik/core/controller/Database.php

nginx -g 'daemon off;'
