VERSION_ID := 1.0.0
CHANNEL    := stable

FILES = \
	files/box/change_host_name.rb \
	files/box/configure_networks.rb \
	files/box/Vagrantfile \
	files/cloud-config.yml \
	files/coreos-setup-environment \
	files/install.yml \
	files/vagrant

box: coreos.json builds/virtualbox/coreos-$(CHANNEL).box $(FILES)

builds/virtualbox/coreos-$(CHANNEL).box:
	packer build coreos.json

install: builds/virtualbox/coreos-$(CHANNEL).box
	VBoxManage registervm builds/virtualbox/coreos-$(CHANNEL).ovf

clean:
	rm -fr builds
	rm -fr packer_cache

.PHONY: box clean
