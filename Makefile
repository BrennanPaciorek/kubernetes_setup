setup: ansible-galaxy vagrant-setup

ansible-galaxy:
	ansible-galaxy collection install -r tools/ansible/meta/requirements.yml -p tools/ansible/collections
	ansible-galaxy role install -r tools/ansible/meta/requirements.yml -p tools/ansible/roles

ansible-galaxy-force:
	ansible-galaxy collection install -r tools/ansible/meta/requirements.yml -p tools/ansible/collections --force
	ansible-galaxy role install -r tools/ansible/meta/requirements.yml -p tools/ansible/roles --force

vagrant-setup:
	vagrant plugin install vagrant-libvirt
	vagrant box add \
		https://cloud.centos.org/centos/9-stream/x86_64/images/CentOS-Stream-Vagrant-9-20230704.1.x86_64.vagrant-libvirt.box \
		--name centos/stream9
