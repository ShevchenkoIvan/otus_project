#!/bin/bash

cd /tmp
curl -LO https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz

tar zxvf node_exporter-1.3.1.linux-amd64.tar.gz
cd node_exporter-1.3.1.linux-amd64
cp node_exporter /usr/local/bin/
chown -R nodeusr:nodeusr /usr/local/bin/node_exporter

rm -rf node_exporter-1.3.1.linux-amd64
