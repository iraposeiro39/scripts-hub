#!/bin/bash
#
# Help script
# ┕ made by iraposeiro39
#
echo "Initializing..."
#### Functions
## Detect OS
function os_detect {
   eval $(cat /etc/os-release | head -n 1)
   echo "Detected OS: $NAME"
   case $NAME in
      *debian*)
   sleep 2
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
        echo "2) DNS"
        echo "3) WAZUH"
        echo "4) Exit"
        read -p "Choose an option: " SEL
            case $SEL in
                1) ubuntu_ip_func
                   clear;;
                
                2) echo "Will work in the future :P"
                   # dns_func
                   sleep 1
                   clear;;

                3) wazuh_func
                   clear;;

                4) echo "Bye Bye :)"
                   exit;;
               
                *) clear;;
            esac
    done
