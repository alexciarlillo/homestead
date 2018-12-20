#!/usr/bin/env bash

sudo sed -i "s/^bind 127.0.0.1$/bind 127.0.0.1 192.168.10.10/" /etc/redis/redis.conf

sudo service redis restart
