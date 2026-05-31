#!/bin/bash

echo "===== Vegas Terminal Bootstrap ====="

rm -rf /opt/tv-discord-bot

read -p "GitHub Token: " TOKEN

git clone https://${TOKEN}@github.com/jiumeng77/vegas-terminal.git /opt/tv-discord-bot

cd /opt/tv-discord-bot || exit

bash scripts/install.sh
