Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2204"
  
    # NAT interface
    config.vm.network "private_network", ip: "192.168.56.101"
    # Customize VM settings
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "10240"
      vb.cpus = 6
    end
    config.vm.provision "shell", path: "bootstrap.sh"
  #   config.vm.provision "shell", inline: <<-SHELL
  #     # Your provisioning scripts here
  #     sudo useradd -s /bin/bash -d /opt/stack -m stack
  #     sudo chmod +x /opt/stack
  #     echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack
  #     sudo -u stack -i
  #     sudo id
  #     sudo apt-get install -y git-core
  #     git clone https://opendev.org/openstack/devstack -b stable/zed
  #     cd devstack
  #     cp samples/local.conf .
  #     cat >> local.conf <<'EOF'
  #     ADMIN_PASSWORD=secret 
  #     DATABASE_PASSWORD=$ADMIN_PASSWORD 
  #     RABBIT_PASSWORD=$ADMIN_PASSWORD 
  #     SERVICE_PASSWORD=$ADMIN_PASSWORD 
  #     IP_VERSION=4 
  #     LOGFILE=$DEST/logs/stack.sh.log 
  #     LOG_COLOR=False 
  #     HOST_IP="192.168.56.101"
  #     'EOF'
  #     ./stack.sh
  #   SHELL
  end