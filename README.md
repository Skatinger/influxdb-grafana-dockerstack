# Docker-compose and simple testing interface
# InfluxDB
# + Grafana stack
# + Telegraf

### setup
get the stack:
```
docker pull grafana/grafana
docker pull influxdb
docker pull telegraf
```

### running the stack
Either use the run.sh script or manually:

```
sudo mkdir -p /srv/docker/grafana/data
docker-compose up -d
sudo chown -R 472:472 /srv/docker/grafana/data

```
### stop it again

```
docker-compose stop
docker-compose rm
```

### jupyter notebook
the notebook provides a simple setup to create an influxdb, connect to it and send requests  
It's used as basis for the aiocoap server to send data.

### grafana
on first startup the dashboard has to be configured for the desired data. this can be done under *http://127.0.0.1:3000* with login admin-admin.