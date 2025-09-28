#!/bin/bash

set -ouex pipefail

source /etc/os-release
openvox_release="8"
os_name="${ID}"
version="${VERSION_ID}"
curl -o openvoxrelease.rpm "https://yum.voxpupuli.org/openvox${openvox_release}-release-${os_name}-${version}.noarch.rpm"
dnf5 install -y ./openvoxrelease.rpm
rm ./openvoxrelease.rpm
# It seems like we can't install openvox agent any which way during the container build stage
#dnf5 --installroot=/var --setopt=persistdir=$(mktemp -d) --use-host-config install -y openvox-agent
#dnf5 install -y openvox-agent
#rpm-ostree install -y openvox-agent
