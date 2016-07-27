#!/bin/sh

case "$1" in
  start)
    echo "Starting Minecraft server on screen Minecraft..."
    screen -S Minecraft /minecraft/startscript.sh
    echo "Done!"
    ;;
  stop)
    echo "Backing up the Minecraft server..."
    cp -r /minecraft/world /minecraft/backup
    echo "Done!"

    echo "The last backup was on $date." >> /minecraft/backup/date.txt

    echo "The server is shutting down."
    screen -X -S Minecraft kill 
   ;;
  *)
    echo "Usage: {start|stop}"
    exit 1
    ;;
esac
