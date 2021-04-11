#!/bin/bash
echo "Copying Service Units"
sudo cp -v flatpak-update.service /etc/systemd/system/flatpak-update.service
sudo cp -v flatpak-background-update.service /etc/systemd/system/flatpak-background-update.service
sudo cp -v flatpak-background-update.timer /etc/systemd/system/flatpak-background-update.timer
echo "Reloading Systemd Daemon"
sudo systemctl daemon-reload
echo "Enable flatpak-update.service if you wish to upgrade Flatpaks on Boot"
echo "Enable flatpak-background-update.timer if you wish to upgrade Flatpaks on a Daily Basis while the System is Online"
