# Packer templates for Ubuntu

### Overview

This repository contains [Packer](https://packer.io/) templates for creating Ubuntu Vagrant boxes.

## Ubiun
https://releases.ubuntu.com/20.04/ubuntu-20.04.2-live-server-amd64.iso

## Building the Vagrant boxes with Packer

To build all the boxes, you will need [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

We make use of JSON files containing user variables to build specific versions of Ubuntu.
You tell `packer` to use a specific user variable file via the `-var-file=` command line
option.  This will override the default options on the core `ubuntu.json` packer template,
which builds Ubuntu 20.04 by default.

If you want to make boxes for a specific desktop virtualization platform, use the `-only`
parameter.  For example, to build Ubuntu 20.04 for VirtualBox:

    $ packer build -only=virtualbox-iso -var-file=ubuntu2004.json ubuntu.json
    $ packer build -only=virtualbox-iso -var-file=ubuntu2004-desktop.json ubuntu.json
    $ packer build -only=virtualbox-iso -var-file=ubuntu2004-desktop-full.json ubuntu.json
