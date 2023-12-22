Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2204"
    config.vm.network "private_network", ip: "192.168.56.101"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "10240"
      vb.cpus = 6
    end
    config.vm.provision "shell", path: "bootstrap.sh"
  end
