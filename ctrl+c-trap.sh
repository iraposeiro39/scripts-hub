#!/bin/bash
#
# CTRL+C TRAP
#
function ctrl {
    while true
        do
            read -p "Do you wish to exit? (y/n): " YN
            case $YN in
                [yY]*)  echo "Cleaning up..."
                        rm /tmp/interfaces 2>/dev/null
                        rm /tmp/00-installer-config.yaml 2>/dev/null
                        sleep 1
                        echo "Bye Bye :)"
                        exit
                        ;;
                
                [nN]*)  clear
                        ;;
            esac
        done
}

trap ctrl SIGINT

while true
    do
        echo "Lol."
        echo "Just a test"
        echo "Try to CTRL+C :)"
        read lol
        clear
    
    done