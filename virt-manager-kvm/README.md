# virt-manager with KVM

Under Ubuntu this is not exactly nice, at least up to Ubuntu 20 my experiences were rather sad.

But under Debian this seems to be one of environment of choice.


## How to ssh instance
* In VM: ip addr show -> find address (`vm_ip`) of `enp1s0` or similar, not `lo`
* ssh - from host: `ssh remoteuser@vm_ip`
* scp: `scp localfile remoteuser@vm_ip`

## Share folders between host and VM
Based on:
* https://www.debugpoint.com/share-folder-virt-manager/
* https://ostechnix.com/setup-a-shared-folder-between-kvm-host-and-guest/

Steps to follow:
* Stop VM
* In properties allow shared memory in Memory part
* In properties add new hardware of type filesystem
* Set host source path, set VM mount name (not path)
* Start VM
* create mount point: `sudo mkdir /mnt/mypoint`
* mount host folder using mount name: `sudo mount -t virtiofs mount_name /mnt/mypoint`
