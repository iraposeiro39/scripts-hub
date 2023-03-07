#!/bin/bash
#
# You need root priviledges to run this script
#
##### Script by AJ and iraposeiro39
#
# pc1=6C:2B:59:EF:49:97
# pc2=6C:2B:59:F0:19:5E
# pc3=6C:2B:59:EF:41:1B
# pc4=6C:2B:59:F0:12:98
# pc5=6C:2B:59:F0:0E:BD
# pc6=6C:2B:59:EF:F5:3B
# pc7=6C:2B:59:F0:0E:12
# pc8=54:BF:64:86:38:B0
# pc9=6C:2B:59:EF:F7:43
# pc10=6C:2B:59:EF:46:BF
# pc11=6C:2B:59:F0:0F:DD
# pc12=6C:2B:59:EF:49:4E
# pc13=6C:2B:59:F0:19:E1
# pc14=6C:2B:59:EF:63:DC
# pc15=6C:2B:59:EF:54:43
# pc16=6C:2B:59:F5:1B:CE
# pc17=6C:2B:59:F0:11:73
# pc18=6C:2B:59:EF:47:D8
# pc19=6C:2B:59:F0:18:77
# pcc20=6C:2B:59:EF:47:88
#
## Functions
function spoof {
      sudo macchanger -m $MAC enp0s3 &>/dev/null
      macchanger -s enp0s3
      sudo ip link set enp0s3 down
      sudo ip link set enp0s3 up
      ping -c 20 8.8.8.8 &>/dev/null
      echo "Mac address changed successfully!"
      clear
}
#
clear
echo "Initializing script..."
sleep 2
clear
while true
      do
            echo "=========| Traquinagem-inator |========="
            echo "Choose and option: "
            ## Mac address changer
            echo "1> traquinagem :)"
            ## Clear Mac address changes
            echo "2> Clear Traquinagem"
            ## Show the current mac address
            echo "3> Show Traquinagem"
            echo "4> Test Connection"
            echo "5> Exit"
            read -p "-> " SELECT

## Start the fun 
if [ $SELECT == 1 ] 2>/dev/null
then
      while true
            do 
            read -p "Chose the PC's number (1-21): " PC
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
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done

                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:49:97
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
                        
                  2) echo "You chose PC2"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:19:5E
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  3) echo "You chose PC3"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:41:1B
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  4) echo "You chose PC4"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:12:98
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  5) echo "You chose PC5"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:0E:BD
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
                   6) echo "You chose PC6"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:F5:3B
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  7) echo "You chose PC7"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:0E:12
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  8) echo "You chose PC8"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=54:BF:64:86:38:B0
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                   9) echo "You chose PC9"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:F7:43
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
                  10) echo "You chose PC10"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:46:BF
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  11) echo "You chose PC11"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:0F:DD
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  12) echo "You chose PC12"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:49:4E
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
                  13) echo "You chose PC13"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:19:E1
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
                  14) echo "You chose PC14"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:63:DC
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
                  15) echo "You chose PC15"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:54:43
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  16) echo "You chose PC16"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F5:1B:CE
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  17) echo "You chose PC17"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:11:73
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  18) echo "You chose PC18"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:47:D8
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  19) echo "You chose PC19"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:18:77
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  20) echo "You chose PC20"
                        sleep 2
                        while true
                              do
                                    read -p "Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                      sleep 2
                                                      break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:EF:47:88
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;

                  21) echo "You chose PC21"
                        sleep 2
                        while true
                              do
                                    read -p "Warning! Pc do stor! Are you sure you want to do this? (y/n): " YN
                                          case $YN in
                                                [Yy]*) echo "Proceeding..."
                                                      sleep 1
                                                      break;;
                                                [Nn]*) echo "Going back..."
                                                       sleep 2
                                                       break;;
                                          esac
                              done
                        case $YN in
                              [yY]*) MAC=6C:2B:59:F0:11:62
                                     spoof
                                     sleep 1
                                     break;;
                              [nN]*) clear
                                     break;;
                        esac;;
            esac
done

elif [ $SELECT == 2 ] 2>/dev/null
then
      echo "Clearing Cloned Mac-Adress..."
      sleep 1
      sudo macchanger -p enp0s3
      read -p "Press any key to continue..."
      clear

elif [ $SELECT == 3 ] 2>/dev/null
then
      echo "Here are your Mac addresses"
      macchanger -s enp0s3
      read -p "Press any key to continue..."
      clear

elif [ $SELECT == 4 ] 2>/dev/null
then
      echo "Testing connection to 1.1.1.1"
      ping -c 4 1.1.1.1
      read -p "Press any key to continue..."
      clear

elif [ $SELECT == 5 ] 2>/dev/null
then
      echo "See ya"
      exit

else
      clear
fi
done