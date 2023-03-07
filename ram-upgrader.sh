#!/bin/bash
#
# lol
#
## Start Script
clear
echo Starting. Please wait...
sleep 2
clear
while true
    do
        ## Main Menu
        echo "###################################"
        echo "###### RAM UPGRADER Ver.2.3 #######"
        echo "###################################"
        echo " "
        echo "Welcome to the future of Speed!"
        echo " "
        echo "======| What do you want to do? |======"
        echo " "
        echo "1> Increase RAM by 4GB"
        echo "2> Increase RAM by 8GB"
        echo "3> Increase RAM by 16GB"
        echo "4> Increase RAM by 32GB"
        echo "5> Exit"
        ## Menu choice
        while true
            do
                read -p "-> " NUM
                case $NUM in
                    [1]*)  RAM=4GB
                           break;;
                    [2]*)  RAM=8GB
                           break;;
                    [3]*)  RAM=16GB
                           break;;
                    [4]*)  RAM=32GB
                           break;;
                    [5]*)  echo "Quitting..."
                           exit;;
                esac
        done
        ## Funny part
        clear
        echo "Upgrading RAM to $RAM, this process might take upwards of 5 minutes, please wait..."
        sleep 1
        # timeout 25s yes lol > /tmp/carr.tmp0971582642
        echo "...Done! Enjoy your extra ram :)"
        sleep 4
        clear
done