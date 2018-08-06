packer-oses
===========

Packer.io templates for CoreOS.

Currently only virtualbox are supported.

Building
========

To build run the following:

```
packer build coreos.json 
```


## Example Output

```bash
mesospheres-MacBook-Pro-67:packer-oses mbernadin$ packer build coreos.json
virtualbox-iso output will be in this color.

==> virtualbox-iso: Downloading or copying ISO
    virtualbox-iso: Downloading or copying: http://stable.release.core-os.net/amd64-usr/835.13.0/coreos_production_iso_image.iso
    virtualbox-iso: Download progress: 8%
    virtualbox-iso: Download progress: 18%
    virtualbox-iso: Download progress: 29%
    virtualbox-iso: Download progress: 40%
    virtualbox-iso: Download progress: 49%
    virtualbox-iso: Download progress: 63%
    virtualbox-iso: Download progress: 94%
==> virtualbox-iso: Starting HTTP server on port 8483
==> virtualbox-iso: Creating virtual machine...
==> virtualbox-iso: Creating hard drive...
==> virtualbox-iso: Creating forwarded port mapping for communicator (SSH, WinRM, etc) (host port 4197)
==> virtualbox-iso: Executing custom VBoxManage commands...
    virtualbox-iso: Executing: modifyvm coreos-stable --memory 1024
    virtualbox-iso: Executing: modifyvm coreos-stable --cpus 1
==> virtualbox-iso: Starting the virtual machine...
==> virtualbox-iso: Waiting 30s for boot...
==> virtualbox-iso: Typing the boot command...
==> virtualbox-iso: Waiting for SSH to become available...
==> virtualbox-iso: Connected to SSH!
==> virtualbox-iso: Uploading VirtualBox version info (5.1.24)
==> virtualbox-iso: Uploading files/coreos-setup-environment => coreos-setup-environment
==> virtualbox-iso: Uploading files/cloud-config.yml => cloud-config.yml
==> virtualbox-iso: Provisioning with shell script: scripts/oem.sh
==> virtualbox-iso: Provisioning with shell script: scripts/cleanup.sh
==> virtualbox-iso: Gracefully halting virtual machine...
==> virtualbox-iso: Preparing to export machine...
    virtualbox-iso: Deleting forwarded port mapping for the communicator (SSH, WinRM, etc) (host port 4197)
==> virtualbox-iso: Exporting virtual machine...
    virtualbox-iso: Executing: export coreos-stable --output builds/packer-coreos-stable-835.13.0-virtualbox/coreos-stable.ovf
==> virtualbox-iso: Deregistering and deleting VM...
Build 'virtualbox-iso' finished.
```

## Next Steps

 - [ ] Create Docker Machine Compatable ISO
 - [ ] Compete End to End test with terraform_docker_machine provisioner
 - [ ] Support CoreOS 835.13.0
 - [ ] Support RHEL 7
 - [ ] Support CentOS 
