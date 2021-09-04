#!/bin/sh

while true
do
        cd ~/steamcmd

        ./steamcmd.sh +login dustify_steam Hgx-MY:n9pX^cF\) +app_update 233780 +quit

        cd ~/Steam/steamapps/common/Arma\ 3\ Server
        ./arma3server -client -connect=127.0.0.1 -port=2302;
done
