# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provider :libvirt do |domain|
    domain.memory = 1024
    domain.nested = true
  end

  config.vm.define :k8sc01 do |node|
    node.vm.hostname = 'k8sc01'
    node.vm.network :private_network,
      :ip => '169.2.2.2/24',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

  config.vm.define :k8sw01 do |node|
    node.vm.hostname = 'k8sw01'
    node.vm.network :private_network,
      :ip => '169.2.2.2/24',
      :auto_config => false,
      :libvirt__forward_mode => 'veryisolated',
      :libvirt__dhcp_enabled => false,
      :libvirt__network_name => 'test_network' 
  end

end
