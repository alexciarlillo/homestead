#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

# allow remote redis access
sed -i '/^bind/s/bind 127.0.0.1/bind 127.0.0.1 192.168.10.10/' /etc/redis/redis.conf

# add SA specific db settings
cat >> /etc/mysql/my.cnf << EOF

[mysqld]
sql_mode = "NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"
group_concat_max_len = 1048576
EOF


# If you have user-specific configurations you would like
# to apply, you may also create user-customizations.sh,
# which will be run after this script.
