#!/bin/bash
#
# A Server setup script made for debian and ubuntu.
# ┕ made by iraposeiro39
#
# Follow my projects on Github: https://github.com/iraposeiro39
#
echo "Initializing..."
#### Functions
## DETECT OS
function os_detect {
   eval $(cat /etc/os-release | head -n 1)
   echo "Detected OS: $NAME"
   sleep 1
   case $NAME in
      *?ebian*) echo "Setting up config for Debian..."
                OS=debian
                ;;
   
      *?buntu*) echo "Setting up config for Ubuntu..."
                OS=ubuntu
               ;;

      *) echo "Detected OS is not officialy supported!"
         echo "Defaulting to debian, altought it may not work..."
         OS=debian
         read -p "Press any key to continue..."
   esac
   sleep 1
}

## DEBIAN IP
function debian_ip_func {
   read -p "IP Address: " IP
   read -p "Subnet Mask: " SUBNET
   read -p "Network ID: " NET
   read -p "Broadcast: " BROADCAST
   read -p "Default Gateway: " DEFG
   sudo echo "# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto enp0s3
allow-hotplug enp0s3
iface enp0s3 inet static
        address $IP
        netmask $SUBNET
        network $NET
        broadcast $BROADCAST
        gateway $DEFG
" > /etc/network/interfaces
   echo " "
   echo "Here's the IP Address file (/etc/network/interfaces):"
   cat /etc/network/interfaces
   read -p "Press any key to continue..."
}

## UBUNTU IP
function ubuntu_ip_func {
   read -p "Pc's hostname: " HOSTNAME
   read -p "IP Address and subnet (x.x.x.x/xx): " IP
   read -p "Default Gateway: " DEFG
   read -p "DNS no.1: " DNS1
   read -p "DNS no.2: " DNS2
   sudo echo "# Network config $HOSTNAME
network:
  ethernets:
    enp0s3:
      dhcp4: false
      addresses:
      - $IP
      routes:
      - to: default
        via: $DEFG
      nameservers:
        addresses: [$DNS1, $DNS2]
  version: 2" > 00-installer-config.yaml
   echo " "
   echo "Here's the IP Address file (/etc/netplan/00-installer-config.yaml):"
   cat /etc/netplan/00-installer-config.yaml
   read -p "Press any key to continue..."
}

## WAZUH
function wazuh_func {
   echo "Getting the files from the web..."
   curl -sO https://packages.wazuh.com/4.3/wazuh-install.sh
   chmod +x wazuh-install.sh
   echo "Installing Wazuh..."
   ./wazuh-install.sh -a &>wazuh.log | tee
   echo " "
   echo "Wazuh is installed, you will want to check the wazuh.log file for the user password"
   read -p "Press any key to continue..."
}

#### Start
os_detect
clear
while true
   do
      echo "======= LINUX SRV ======="
      echo "1) IP"
      echo "2) DHCP"
      echo "3) DNS"
      echo "4) WAZUH"
      echo "5) EXIT"
      read -p "Choose an option: " SEL
            case $SEL in
                1) if [ $OS == debian ]
                     then
                        debian_ip_func

                  elif [ $OS == ubuntu ]
                     then
                        ubuntu_ip_func
                  
                  fi
                   clear
                   ;;
                
                2) echo "DHCP will work in the future :P"
                   # dhcp_func
                   sleep 1
                   clear
                   ;;

                3) echo "DNS will work in the future :P"
                   # dns_func
                   sleep 1
                   clear
                   ;;

                4) read -p "Are you sure you want to install (y/n): " YN
                     case $YN in
                        [Yy]*) echo "Proceeding..."
                               sleep 1
                               wazuh_func
                               ;;

                        [Nn]*) echo "Going back..."
                               sleep 1
                               ;;
                     esac
                   clear
                   ;;

                5) echo "Bye Bye :)"
                   exit
                   ;;
               
                *) clear
                   ;;
            esac
   done
