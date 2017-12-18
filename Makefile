default: none


prepare:
	sudo apt-get install qemu-kvm libvirt-bin libvirt-dev ruby-fog-libvirt
	sudo usermod -a -G libvirt $$USER
	vagrant plugin install vagrant-libvirt