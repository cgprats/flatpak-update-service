#!/bin/bash
echo "Copying Service Units"
sudo cp -v flatpak-update.service /etc/systemd/system/flatpak-update.service
echo "Reloading Systemd Daemon"
sudo systemctl daemon-reload
echo "Enabling Services"
sudo systemctl enable flatpak-update.service
sudo systemctl start flatpak-update
