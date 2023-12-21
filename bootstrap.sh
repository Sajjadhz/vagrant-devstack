#!/bin/bash

sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
systemctl reload sshd

echo "[TASK 9] Set root password"
echo -e "openstack\nopenstack" | passwd root >/dev/null 2>&1
echo "export TERM=xterm" >> /etc/bash.bashrc

sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo chmod +x /opt/stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stackecho "[TASK 9] Set root password"

echo -e "openstack\nopenstack" | passwd stack >/dev/null 2>&1
echo "export TERM=xterm" >> /etc/bash.bashrc
sudo -u stack -i
sudo id

pwd
whoami

# sudo su
# git clone https://opendev.org/openstack/devstack -b stable/zed
# pwd
# whoami
# cd devstack
# cp samples/local.conf .
# cat >> local.conf <<'EOF'
# ADMIN_PASSWORD=secret 
# DATABASE_PASSWORD=$ADMIN_PASSWORD 
# RABBIT_PASSWORD=$ADMIN_PASSWORD 
# SERVICE_PASSWORD=$ADMIN_PASSWORD 
# IP_VERSION=4 
# LOGFILE=$DEST/logs/stack.sh.log 
# LOG_COLOR=False 
# HOST_IP="192.168.56.101"
# EOF
# ./stack.sh