#!/bin/bash

echo "===== Vegas Terminal Bootstrap ====="

rm -rf /opt/tv-discord-bot

read -p "GitHub Token: " TOKEN

git clone https://${TOKEN}@github.com/jiumeng77/tv-discord-bot.git

cd /opt/tv-discord-bot || exit

echo
echo "1) VPS / Systemd"
echo "2) Docker"
echo

read -p "Choose Install Mode [1-2]: " MODE

if [ "$MODE" = "2" ]; then
    bash scripts/docker-install.sh
else
    bash scripts/install.sh
fi