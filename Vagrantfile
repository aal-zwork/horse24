# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # config.vm.box = "ubuntu/trusty64"
  # config.vm.box = "ubuntu/bionic64"
  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", type: "dhcp"
  # config.vm.network "public_network", bridge: "wlo1", ip: "192.168.1.80"
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.cpus = 1
    vb.memory = 1024
  end

  # config.vm.provision "file", source: "./config/daemon.json", destination: "/tmp/daemon.json"
  config.vm.provision "shell", path: "vagrant/bootstrap.sh", privileged: true
end
