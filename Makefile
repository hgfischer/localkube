default: check_kvm

check_kvm:
	sudo kvm-ok

prepare:
	sudo apt-get install qemu-kvm libvirt-bin libvirt-dev ruby-fog-libvirt nfs-kernel-server
	sudo usermod -a -G libvirt $$USER
	vagrant plugin install vagrant-libvirt
	vagrant plugin install vagrant-mutate
	vagrant plugin install vagrant-rekey
	sed -i 's/Fixnum/Integer/' $$HOME/.vagrant.d/gems/2.4.2/gems/nokogiri-1.6.8.1/lib/nokogiri/xml/document.rb