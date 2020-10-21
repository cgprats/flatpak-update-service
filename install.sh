#!/bin/bash
echo "Copying Service Units"
sudo cp -v flatpak-update.service /etc/systemd/system/flatpak-update.service
sudo cp -v flatpak-update.timer /etc/systemd/system/flatpak-update.timer
echo "Reloading Systemd Daemon"
sudo systemctl daemon-reload
echo "Enabling Services"
sudo systemctl enable flatpak-update.timer
sudo systemctl start flatpak-update
