FROM ubuntu

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y \
        curl \
        lib32gcc1 \
        lib32stdc++6 \
        nano \
        screen \
        tmux \
        wget \ 
        && \
    apt autoremove -y

RUN adduser --disabled-password --gecos "" steam
USER steam
RUN mkdir /home/steam/steam

WORKDIR "/home/steam/steam"
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN ./steamcmd.sh +login USERNAME PASSWORD +force_install_dir ~/arma +app_update 233780 +quit

WORKDIR "/home/steam/arma/mpmissions"
RUN wget https://github.com/official-antistasi-community/A3-Antistasi/releases/download/2.5.2/Antistasi-Altis-2-5-2.Altis.pbo

WORKDIR "/home/steam/arma/"
COPY --chown=steam server.cfg .

WORKDIR "/home/steam"
RUN mkdir -p "/home/steam/.local/share/Arma 3 - Other Profiles/Player"

WORKDIR "/home/steam/.local/share/Arma 3 - Other Profiles/Player"
COPY --chown=steam Player.Arma3Profile .

WORKDIR "/home/steam"

COPY --chown=steam run.sh . 
COPY --chown=steam wrapper.sh .
RUN chmod +x run.sh
RUN chmod +x wrapper.sh

CMD /bin/bash