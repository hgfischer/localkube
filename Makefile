default: none


prepare:
	sudo apt-get install qemu-kvm libvirt-bin libvirt-dev ruby-fog-libvirt
	vagrant plugin install vagrant-libvirt