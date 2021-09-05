#!/bin/sh

while true
do
        cd ~/steam

        ./steamcmd.sh +login USERNAME PASSWORD +app_update 233780 +quit

        cd ~/Steam/steamapps/common/Arma\ 3\ Server
        ./arma3server -client -connect=127.0.0.1 -port=2302;
done
