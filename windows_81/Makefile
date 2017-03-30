.PHONY: all build deploy

all: build deploy

build:
	ionice -c idle packer build windows_81.json

deploy:
	ionice -c idle vagrant box add --name windows_81 ../windows_81_virtualbox.box --force

