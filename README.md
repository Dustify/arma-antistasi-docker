git clone https://github.com/Dustify/arma-antistasi-docker.git

in Dockerfile and run.sh, replace USERNAME and PASSWORD with steam credentials
don't use your main steam account, create one specifically for running servers, disable steam authenticator (required) and use a strong password

run.sh is where the server port is defined (default 2302)
Player.Arma3Profile defines difficulty settings

edit server.cfg as required, this is where the antistasi game settings are stored, see https://github.com/official-antistasi-community/A3-Antistasi/blob/unstable/A3-Antistasi/MissionDescription/params.hpp for detail on available options and values

docker build -t arma-antistasi .

docker create -it --name arma-antistasi -p 2302:2302/udp -p 2303:2303/udp -p 2304:2304/udp -p 2305:2305/udp -p 2306:2306/udp arma-antistasi
or
docker create -it --name arma-antistasi -p 2402:2402/udp -p 2403:2403/udp -p 2404:2404/udp -p 2405:2405/udp -p 2406:2406/udp arma-antistasi
or
docker create -it --name arma-antistasi -p 2502:2502/udp -p 2503:2503/udp -p 2504:2504/udp -p 2505:2505/udp -p 2506:2506/udp arma-antistasi
or
docker create -it --name arma-antistasi -p 2602:2602/udp -p 2603:2603/udp -p 2604:2604/udp -p 2605:2605/udp -p 2606:2606/udp arma-antistasi
etc

docker start arma-antistasi

docker attach arma-antistasi

./wrapper.sh

screen -r

CTRL A+D

CTRL P+Q
