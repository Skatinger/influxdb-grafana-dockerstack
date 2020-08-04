#!/bin/bash

# data persitency
sudo mkdir -p /srv/docker/grafana/data
# sudo mkdir -p /srv/docker/influxdb/data
docker-compose up -d
sudo chown -R 472:472 /srv/docker/grafana/data

echo "Grafana: http://127.0.0.1:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"

echo
echo "Creating a new database <mydb>"
echo "curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'"
