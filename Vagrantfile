# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "debian/jessie64"

  config.vm.provider :libvirt do |domain|
    domain.driver = 'kvm'
    domain.memory = 1024
    domain.cpus = 4
  end

  config.vm.define :c01 do |node|
    node.vm.hostname = 'c01'
    node.vm.network :private_network,
      :ip => '169.2.2.2/24',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :w01 do |node|
    node.vm.hostname = 'w01'
    node.vm.network :private_network,
      :ip => '169.2.2.2/24',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

end
