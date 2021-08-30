#!/bin/sh

while true
do
        cd ~/steam

        ./steamcmd.sh +login USERNAME PASSWORD +force_install_dir ~/arma +app_update 233780 +quit

        cd ~/arma
        ./arma3server -config=server.cfg -profiles -port=2302
done
