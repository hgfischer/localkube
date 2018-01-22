VERSION   := 1.9.1
WORKDIR   := ./workdir
CFSSL     := $(WORKDIR)/cfssl
CFSSLJSON := $(WORKDIR)/cfssljson



default: check_kvm


check_kvm:
	sudo kvm-ok


prepare: 
	sudo apt-get -y install qemu-kvm libvirt-bin libvirt-dev ruby-fog-libvirt nfs-kernel-server virt-manager
	sudo usermod -a -G libvirt $$USER
	vagrant plugin install vagrant-libvirt
	vagrant plugin install vagrant-mutate
	sed -i 's/Fixnum/Integer/' $$HOME/.vagrant.d/gems/2.4.2/gems/nokogiri-1.6.8.1/lib/nokogiri/xml/document.rb
	echo "Reboot or re-login to apply group settings for your user"


xenial64: 
	vagrant box update --box ubuntu/xenial64
	vagrant mutate ubuntu/xenial64 libvirt


up: check_kvm
	vagrant up --provider=libvirt


cfssl:
	wget -c https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 -O $(CFSSL)
	chmod +x $(CFSSL)
	wget -c https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 -O $(CFSSLJSON)
	chmod +x $(CFSSLJSON)


kubernetes:
	wget -c https://storage.googleapis.com/kubernetes-release/release/v$(VERSION)/kubernetes-server-linux-amd64.tar.gz \
		-O $(WORKDIR)/kubernetes-server-linux-amd64.tar.gz
	tar xvzf $(WORKDIR)/kubernetes-server-linux-amd64.tar.gz -C $(WORKDIR)
