#!/usr/bin/env bash

# check if the effective user ID is Not Equal to 0, cuz that means it not running as admin
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo."
  exit 1
fi

echo "Starting splash preview..."

# show actual preview
plymouthd --mode=shutdown
plymouth --show-splash

# wait 3 seconds b4 opening it
for i in $(seq 1 3);
do
    sleep 1
    echo $i
done

# close it so ur not softlocked
plymouth --quit

echo "Complete."
