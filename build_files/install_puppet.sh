#!/bin/bash

set -ouex pipefail

release="8"
os_name="fedora"
version="42"
curl -o openvox.rpm "https://yum.voxpupuli.org/openvox${release}-release-${os_name}-${version}.noarch.rpm"
dnf4 install -y ./openvox.rpm
#dnf5 --installroot=/var --setopt=persistdir=$(mktemp -d) --use-host-config install -y openvox-agent
#dnf5 install -y openvox-agent
