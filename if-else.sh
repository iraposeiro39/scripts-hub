#!/bin/bash
#
# lol
#
## Start Script
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
        read -p "-> " SELECT
        if [[ $SELECT == y ]]
        then
            echo "You pressed 1"
        
        elif [ $SELECT == Y ]
        then
            echo "You pressed 1"
        
        elif [ $SELECT == 2 ]
        then
            echo "You pressed 2"
        
        elif [ $SELECT == 3 ]
        then
            echo "You pressed 3"
        
        elif [ $SELECT == 4 ]
        then
            echo "You pressed 4"
        
        elif [ $SELECT == 5 ]
        then
            echo "You pressed 5"
        
        fi
        
        read -p "Press any key to continue..."
        clear
done