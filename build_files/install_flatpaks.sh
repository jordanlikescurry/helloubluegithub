#!/bin/bash

set -ouex pipefail

flatpak remote add --system --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --system -y com.google.Chrome
flatpak override --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons:create com.google.Chrome
