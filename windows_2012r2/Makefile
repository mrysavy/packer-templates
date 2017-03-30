.PHONY: all build deploy

all: build deploy

build:
	ionice -c idle packer build windows_2012r2.json

deploy:
	ionice -c idle vagrant box add --name windows_2012r2 ../windows_2012r2_virtualbox.box --force

