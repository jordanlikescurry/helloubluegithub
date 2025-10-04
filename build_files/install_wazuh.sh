#!/bin/bash

set -ouex pipefail

export WAZUH_MANAGER="wazuh"
rpm --import https://packages.wazuh.com/key/GPG-KEY-WAZUH
cat > /etc/yum.repos.d/wazuh.repo << EOF
[wazuh]
gpgcheck=1
gpgkey=https://packages.wazuh.com/key/GPG-KEY-WAZUH
enabled=1
name=EL-\$releasever - Wazuh
baseurl=https://packages.wazuh.com/4.x/yum/
priority=1
EOF

#mkdir -p /var/ossec/{logs,bin,package_files}
#dnf5 install -y wazuh-agent
