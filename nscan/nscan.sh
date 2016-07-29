#!/bin/bash

if [$1 == ""]
  then
    echo "Usage: nscan.sh [network]"

else
    for x in `seq 1 254`; 
      do
        ping -c 1 $1.$x | grep --line-buffered "bytes from" >> /tmp/scan/nresult.txt 
      done

    mv /tmp/nresult.txt ~/bin/nscan/
nresult.txt
    rm /tmp/nresult.txt

fi
