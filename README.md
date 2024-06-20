# Prerequisites

All currently useful prerequisites as well as intended future ones.

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

