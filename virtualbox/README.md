# VirtualBox from Oracle

This is generally very nice environment if you use Windows, Ubuntu or Oracle Linux.

But my experiences with running it under Debian are rather bad.
Versions of VB for new distributions of Debian come usually late, with limited features, takes like 1 year to get fully functional VB for new version of Debian.

## How to ssh instance

* You must export port in network settings. Like host 2222 with guest 22.
* ssh - host use: `ssh -p 2222 remoteuser@localhost`
* scp: `scp -P 2222 localfile remoteuser@localhost:`
