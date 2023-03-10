#!/bin/bash
#
# Help script
# ┕ made by iraposeiro39
#
echo "Initializing..."
#### Functions
## DHCP
function dhcp_func {
sudo echo "# Network config $NAME
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
version: 2" > /etc/netplan/00-installer-config.yaml
}
## WAZUH
function wazuh_func {
    curl -sO https://packages.wazuh.com/4.3/wazuh-install.sh
    chmod +x wazuh-install.sh
    ./wazuh-install.sh -a
}
#### Selection
clear
while true
    do
        echo "======= UBUNTU SRV ======="
        echo "1) DHCP"
        echo "2) DNS"
        echo "3) WAZUH"
        echo "4) Exit"
        read -p "Choose an option: " SEL
            case $SEL in
                1) read -p "Pc's hostname: " NAME
                   read -p "IP Address: " IP
                   read -p "Default Gateway: " DEFG
                   read -p "DNS no.1: " DNS1
                   read -p "DNS no.2: " DNS2
                   dhcp_func
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
