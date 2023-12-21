#!/bin/bash

pwd
whoami
git clone https://opendev.org/openstack/devstack -b stable/zed
cd devstack
pwd
cp samples/local.conf .
cat >> local.conf <<'EOF'
ADMIN_PASSWORD=secret 
DATABASE_PASSWORD=$ADMIN_PASSWORD 
RABBIT_PASSWORD=$ADMIN_PASSWORD 
SERVICE_PASSWORD=$ADMIN_PASSWORD 
IP_VERSION=4 
LOGFILE=$DEST/logs/stack.sh.log 
LOG_COLOR=False 
HOST_IP="192.168.56.101"
EOF
./stack.sh