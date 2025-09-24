#!/bin/bash

set -ouex pipefail

release="8"
os_name="fedora"
version="42"
curl -o openvox.rpm "https://yum.voxpupuli.org/openvox${release}-release-${os_name}-${version}.noarch.rpm"
dnf5 install -y ./openvox.rpm
