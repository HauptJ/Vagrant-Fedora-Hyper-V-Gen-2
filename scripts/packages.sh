#!/bin/bash -eux

# Update all existing packages
dnf update -y
dnf clean all -y

# Install packages
