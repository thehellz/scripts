#!/bin/sh

mkdir /tmp/template/
 mkdir /tmp/template/src
 mkdir /tmp/template/hdr
 mkdir /tmp/template/build

# Creates main.py file and enters in the comment template
touch /tmp/template/src/main.py
echo "# Author: Matthew J Hellige" >> /tmp/template/src/main.py
echo "# Date: " >> /tmp/template/src/main.py
echo "# Purpose: " >> /tmp/template/src/main.py

# Creates header.py and enters in the comment template
touch /tmp/template/hdr/heaher.py
echo "# Author: Matthew J Hellige" >> /tmp/template/hdr/header.py
echo "# Date: " >> /tmp/template/hdr/header.py
echo "# Puepose: " >> /tmp/template/hdr/header.py

# Moves a copy of the license and Makefile to the template directory
cp ~/Programming/Makefile /tmp/template/Makefile
cp ~/Programming/license.txt /tmp/template/license.txt

# moves the template
mv /tmp/template/ ~/Programming/Py/tmp/


# clean up /tmp
rm /tmp/template/ -r 
