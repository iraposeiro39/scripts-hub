#!/bin/bash
#
# Check OS
#
# var=$( cat /etc/os-release | head -n 1 )
eval $(grep "^ID" /etc/os-release)
echo $ID
echo "Just a little change"
read -p "Press any key to continue... "