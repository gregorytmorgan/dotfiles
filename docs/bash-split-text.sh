#!/bin/bash
#
# To split text a simple soln is to use cut, e.g.
#  > ps aux | cut -d " " -f 3
#
# This is problematic if delimiter is composed of  multiple spaces. Better soln is to use awk.
#  > ps aux | awk '{print $3}'
#

echo ""
echo "Example using cut:" 
ps aux | cut -d " " -f 1,3 | tail -n 16


echo ""
echo "Example using awk:" 

ps aux  | awk '{print $1, $2}' | tail -n 16

# end file

