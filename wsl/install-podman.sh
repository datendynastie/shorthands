#!/bin/bash

sudo apt update

# podman installation
echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:unstable.list
curl -fsSL https://download.opensuse.org/repositories/devel:kubic:libcontainers:unstable/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/devel_kubic_libcontainers_unstable.gpg > /dev/null
sudo apt update
sudo apt install podman


echo "tmpfs /tmp tmpfs nosuid,nodev,noatime 0 0" | tee -a /etc/fstab

