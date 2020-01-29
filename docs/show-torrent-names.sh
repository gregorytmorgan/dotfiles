#!/bin/bash
#
# Usage:
# >show-torrent-names.sh "myfile.torrent"
# >show-torrent-names.sh "/home/bob/*.torrents"
#
# Note: the arg quotes are required.
#

if [ "$1" == "" ]; then
    FILES="*.torrent"
else
    FILES="$1"    
fi

for f in $FILES
do
    FNAME=$(/usr/bin/transmission-show "$f" | grep -m 1 "Name:" | awk -F'Name: ' '{print $2}')
    echo $f $FNAME
done

# end file

