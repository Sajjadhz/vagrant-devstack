#!/bin/bash

vagrant up

sshpass -vvv -p openstack ssh-copy-id -f -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub root@192.168.56.101

sshpass -vvv -p openstack ssh-copy-id -f -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub stack@192.168.56.101

sshpass -vvv -p openstack ssh -o StrictHostKeyChecking=no stack@192.168.56.101 'bash -s' < bootstrap_tmp.sh

