# docker-zabbix-server

*WIP*

Zabbix Server Docker image

This image support only mysql and doesn't include mysql server.

## Usage

* Run zabbix server

```
docker run -d \
  --name zabbix-server \
  -e ZBX_DBHost="localhost" \
  -e ZBX_DBName="zabbix" \
  -e ZBX_DBUser="zabbix" \
  -e ZBX_DBPassword="zabbix" \
  higebu/zabbix-server
```
