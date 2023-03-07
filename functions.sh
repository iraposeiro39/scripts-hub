#!/bin/bash
## Function spoof
# function spoof {
#     echo "Hello my name is $NAME"
#     echo "It is a pleasure to meet you"
# }

# echo "Just a checkpoint"
# sleep 1
# read -p "Choose a name: " NAME
# read -p "Press any key to continue..."
# spoof
read -p "Choose 1,2 or 3: " SELECT

if [ $SELECT == 1 ]
    then
            while true
                do 
                    read -p "Chose the PC's number: " PC
                    case $PC in
                        1) echo "You chose PC1"
                            sleep 2
                            while true
                                    do
                                        read -p "Are you sure you want to do this? (y/n): " YN
                                                case $YN in
                                                    [Yy]*) echo "Proceeding..."
                                                            sleep 1
                                                            break;;
                                                    [Nn]*) echo "Exiting..."
                                                            exit;;
                                                esac
                                    done
                            MAC=6C:2B:59:EF:49:97
                            spoof
                            sleep 1
                            break;;
                        2) echo "You chose PC2"
                            sleep 2
                            while true
                                    do
                                        read -p "Are you sure you want to do this? (y/n): " YN
                                                case $YN in
                                                    [Yy]*) echo "Proceeding..."
                                                            sleep 1
                                                            break;;
                                                    [Nn]*) echo "Exiting..."
                                                            exit;;
                                                esac
                                    done
                            MAC=6C:2B:59:F0:19:5E
                            spoof
                            sleep 1
                            break;;
                    esac
            done

elif [ $SELECT == 2 ]
then
    echo "you chose 2"

elif [ $SELECT == 3 ]
then
    echo "you chose 3"

fi