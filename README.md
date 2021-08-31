### Clone the repo

```git clone https://github.com/Dustify/arma-antistasi-docker.git```

### Prepare credentials

Create a new steam account specifically for running dedicated servers, generate a strong password.

If the password contains certain special characters (for example brackets), they may need to be escaped with a backslash '\\' when editing the files in the next step.

Disable steam guard authentication.

### Edit configuration

**Dockerfile**

Replace USERNAME and PASSWORD with steam credentials

**run.sh**

Replace USERNAME and PASSWORD with steam credentials, set a different port if required

**Player.Arma3Profile**

Configure standard arma difficulty settings

**server.cfg**

This is where the antistasi game settings are stored, see https://github.com/official-antistasi-community/A3-Antistasi/blob/unstable/A3-Antistasi/MissionDescription/params.hpp for detail on available options and values

### Build the image

```docker build -t arma-antistasi .```

### Create the container

Edit the command based on which port is set in run.sh, examples below:

```docker create -it --name arma-antistasi -p 2302:2302/udp -p 2303:2303/udp -p 2304:2304/udp -p 2305:2305/udp -p 2306:2306/udp arma-antistasi```

```docker create -it --name arma-antistasi -p 2402:2402/udp -p 2403:2403/udp -p 2404:2404/udp -p 2405:2405/udp -p 2406:2406/udp arma-antistasi```

```docker create -it --name arma-antistasi -p 2502:2502/udp -p 2503:2503/udp -p 2504:2504/udp -p 2505:2505/udp -p 2506:2506/udp arma-antistasi```

```docker create -it --name arma-antistasi -p 2602:2602/udp -p 2603:2603/udp -p 2604:2604/udp -p 2605:2605/udp -p 2606:2606/udp arma-antistasi```

### Start the container

```docker start arma-antistasi```

### Attach to the container

```docker attach arma-antistasi```

### Start the server

```./wrapper.sh```

### Attach to screen to monitor server

```screen -r```

### Detach from screen

```CTRL A+D```

### Detach from the container

Don't use 'exit', it will stop the container!

```CTRL P+Q```
