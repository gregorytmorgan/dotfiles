#!/bin/bash

#
# string
#

StringVal="Welcome to linuxhint"

# Iterate the string variable using for loop
for val in $StringVal; do
    echo $val
done

echo ""

#
# array
#

# Declare an array of string with type
declare -a StringArray=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian" )

# Iterate the string array using for loop
for val in ${StringArray[@]}; do
    echo $val
done

echo ""

DataList=" HTML5, CCS3, BootStrap, JQuery "
Field_Separator=$IFS

# set comma as internal field separator for the string list
IFS=,
for val in $DataList;
do
    trimmed_val=$(echo ${val} | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
    echo ${trimmed_val}
    
done

IFS=$Field_Separator

