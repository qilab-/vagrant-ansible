# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-7.1"

  config.vm.network "private_network", ip: "192.168.33.33"
  config.vm.provision "shell", path: "provision.sh", privileged: true
  config.vm.synced_folder ".", "/vagrant", mount_options: ['dmode=775', 'fmode=664']

  config.vm.synced_folder "../../../git", "/git", mount_options: ['dmode=775', 'fmode=664']
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

end

