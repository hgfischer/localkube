# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = 'debian/stretch64'
  #config.vm.box = 'ubuntu/xenial64'

  config.vm.provider :libvirt do |domain|
    domain.driver = 'kvm'
    domain.memory = 2048
    domain.cpus = 4
  end

  config.vm.provision "shell", :run => "once", :path => "bootstrap.sh"

  config.vm.define :c01 do |node|
    node.vm.hostname = 'c01'
    node.vm.network :private_network,
      :ip => '10.2.1.1/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :c02 do |node|
    node.vm.hostname = 'c02'
    node.vm.network :private_network,
      :ip => '10.2.1.2/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :c03 do |node|
    node.vm.hostname = 'c02'
    node.vm.network :private_network,
      :ip => '10.2.1.3/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :w01 do |node|
    node.vm.hostname = 'w01'
    node.vm.network :private_network,
      :ip => '10.2.2.1/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :w02 do |node|
    node.vm.hostname = 'w02'
    node.vm.network :private_network,
      :ip => '10.2.2.2/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :w03 do |node|
    node.vm.hostname = 'w03'
    node.vm.network :private_network,
      :ip => '10.2.2.3/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :w04 do |node|
    node.vm.hostname = 'w03'
    node.vm.network :private_network,
      :ip => '10.2.2.4/16',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

end
