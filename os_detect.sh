#!/bin/bash
#
# Check OS
#
# var=$( cat /etc/os-release | head -n 1 )
eval $(cat /etc/os-release | head -n 1)
eval $(head -4 /etc/os-release | tail +4)
echo $NAME
echo $BUILD_ID