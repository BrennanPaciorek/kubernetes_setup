# Kubernetes VM

Intends to provide a kubernetes single-node setup using Vagrant to provision the VM and ansible to configure it.

All of the configuration management is done via playbooks in `tools/ansible`.

# Prerequisites

## Packages

- make
- ansible
- vagrant
- kubernetes (for kubectl)
- libvirt
- libvirt-devel
- qemu
- qemu-kvm

On Fedora 
```
# dnf install -y dnf-plugins-core
# dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
# dnf install -y make ansible kubernetes vagrant libvirt libvirt-devel qemu qemu-kvm
```

### Setup libvirt

```bash
# systemctl enable --now libvirtd.service
# usermod -aG libvirt <your-username> # if you want to run vagrant rootless
```

## Setup Vagrant

For quick setup, use `make vagrant-setup`. This will install the necessary plugins and boxes.

The current vagrant setup only works with the libvirt provider.

