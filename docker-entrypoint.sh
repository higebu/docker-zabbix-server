#!/bin/sh


if [ -z "$ZBX_DBHost" ]; then
  export ZBX_DBHost="localhost"
fi
if [ -z "$ZBX_DBName" ]; then
  export ZBX_DBName="zabbix"
fi
if [ -z "$ZBX_DBUser" ]; then
  export ZBX_DBUser="root"
fi
if [ -z "$ZBX_DBPassword" ]; then
  export ZBX_DBPassword=""
fi

echo "" > /etc/zabbix/zabbix_server.conf
for var in `env | grep "^ZBX_" | sed s/^ZBX_//g`; do
  echo "$var" >> /etc/zabbix/zabbix_server.conf
done

zabbix_server -c /etc/zabbix/zabbix_server.conf
tail -F /var/log/zabbix/zabbix_server.log
