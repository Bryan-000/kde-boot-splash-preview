#!/usr/bin/env bash

while :
do
    echo "Starting splash preview..."

    # show actual preview
    sudo plymouthd --mode=shutdown
    sudo plymouth --show-splash

    # wait 3 seconds b4 closing it
    for i in $(seq 1 3);
    do
        sleep 1
        echo $i
    done

    sudo plymouth --quit
    echo "Done! Press any key to run the preview again."

    # -n 1, reads a single character
    # -s, prevents keys from being printed to the terminal
    read -n 1 -s
done
