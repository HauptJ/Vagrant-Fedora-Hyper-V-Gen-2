#!/bin/bash
# Script to test nested virtualization in Hyper-V
# Runs an old school project: https://github.com/SIUE-DevOps/Vagrant_Docker_Cli


set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

# Initial update
sudo dnf update -y

# Install git
sudo dnf install git -y

# Install Kernel Devel dependency to build kernel extensions for VirtualBox
# https://ask.fedoraproject.org/en/question/99415/i-cant-run-virtualbox-on-my-system-fedora-25/
sudo dnf install kernel-devel-$(uname -r) kernel-core-$(uname -r) -y

# Install DKMS
sudo dnf install dkms -y

# Install Virtualbox 5.2
sudo dnf install https://download.virtualbox.org/virtualbox/5.2.8/VirtualBox-5.2-5.2.8_121009_fedora26-1.x86_64.rpm -y
sudo dnf update -y
# Rebuild Virtualbox Config
VBoxManage --version
sudo /sbin/vboxconfig

# Install Vagrant 2.0.1
sudo dnf install https://releases.hashicorp.com/vagrant/2.0.2/vagrant_2.0.2_x86_64.rpm -y
sudo dnf update -y

# Install Ansible
sudo dnf install ansible -y

# Checkout the old school project
git checkout https://github.com/SIUE-DevOps/Vagrant_Docker_Cli.git

# Run old school project
cd Vagrant_Docker_Cli/
vagrant up
