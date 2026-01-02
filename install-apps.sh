#!/bin/bash

set -e

echo "=== Mise à jour du système ==="
sudo apt update

echo "=== Installation des paquets APT ==="
sudo apt install -y \
  jellyfin \
  blender \
  steam-installer \
  flatpak

echo "=== Ajout de Flathub ==="
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "=== Installation de Deezer (Flatpak) ==="
flatpak install -y flathub com.deezer.Deezer

echo "=== Terminé ! ==="
echo "Redémarrage conseillé."
