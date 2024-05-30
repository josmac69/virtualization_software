# virt-manager with KVM

Under Ubuntu this is not exactly nice, at least up to Ubuntu 20 my experiences were rather sad.

But under Debian this seems to be one of environment of choice.

## Note for the future
Base on: https://stackoverflow.com/questions/7927750/specify-an-ssh-key-for-git-push-for-a-given-domain
Configuration of local repository to use specific key - inside the repository: `git config --add --local core.sshCommand 'ssh -i /home/user/.ssh/id_private_key'`


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

## Error on start "network default is not active"
Based on https://askubuntu.com/questions/1036297/cant-start-kvm-guest-network-default-is-not-active
* check status: `sudo virsh net-list --all`
* start network: `sudo virsh net-start default`
