# Prerequisites

All currently useful prerequisites as well as intended future ones

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

## Vagrant
### Vagrant plugins

- vagrant-libvirt

```
vagrant plugin add vagrant-libvirt
```

### Vagrant box

The link redirect from vagrant cloud 404s for centos/stream9 so the image needs to be pulled by url
`vagrant box add https://cloud.centos.org/centos/9-stream/x86_64/images/CentOS-Stream-Vagrant-9-20230704.1.x86_64.vagrant-libvirt.box --name centos/stream9`
