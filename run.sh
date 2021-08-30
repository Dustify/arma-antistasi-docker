#!/bin/sh

while true
do
        cd ~/steam

        ./steamcmd.sh +login username +app_update 233780 +quit

        cd ~/arma
        ./arma3server -config=server.cfg -profiles -port 2302;
done
