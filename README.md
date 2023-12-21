# vagrant-devstack
Installing OpenStack/DevStack using vagrant

## How to install
```
git clone https://github.com/Sajjadhz/vagrant-devstack.git
cd vagrant-devstack
chmod +x ./*.sh
./run.sh
```

## How to destroy
```
vagrant destroy
```

## How to go inside to the vm
```
ssh stack@192.168.56.101
```

```
ssh root@192.168.56.101
```

the password for both `stack` and `root` user is `openstack`.