#!/bin/bash

cd /tmp

curl -LO https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-amd64.tar.gz

mkdir /etc/prometheus
mkdir /var/lib/prometheus

tar zxvf prometheus-2.33.3.linux-amd64.tar.gz
cd prometheus-2.33.3.linux-amd64

cp prometheus promtool /usr/local/bin/
cp -r console_libraries consoles prometheus.yml /etc/prometheus

chown -R prometheus:prometheus /etc/prometheus /var/lib/prometheus

cd ..
rm -rf prometheus-2.33.3.linux-amd64