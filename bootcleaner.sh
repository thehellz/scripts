sudo dpkg --list 'linux-image*'|awk '{ if ($1=="ii") print $2}'|grep -vuname -r| while read -r line; do sudo apt-get -y purge $line;done;sudo apt-get autoremove; sudo update-grub