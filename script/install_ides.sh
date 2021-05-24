#!/bin/bash -eux

if [[ ! "$IDES" =~ ^(true|yes|on|1|TRUE|YES|ON])$ ]]; then
  exit
fi

# Install Visual Studio Code
sudo snap install --classic code

# Install Intelliject IDEA Community edition
sudo snap install intellij-idea-community --classic --edge
