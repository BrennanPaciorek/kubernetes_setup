vagrant-setup:
	vagrant plugin install vagrant-libvirt
	vagrant box add \
		https://cloud.centos.org/centos/9-stream/x86_64/images/CentOS-Stream-Vagrant-9-20230704.1.x86_64.vagrant-libvirt.box \
		--name centos/stream9
