#!/bin/bash
#
# DO INICIO
#
if LINE=$(grep -n "VASKJ" ~/intefaces | cut -f1 -d: | head -n 1 ) &>/dev/null
    then
        echo $LINE
    else
        echo "No file to look for!"
fi


echo "isto tem de tar na linha 10" > ~/interfaces