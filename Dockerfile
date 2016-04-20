FROM gameservers/steamcmd
MAINTAINER Jason Rivers <docker@jasonrivers.co.uk>

ENV APPID=232250
ENV APPDIR=/home/steamsrv/tf2
ENV APP_SERVER_PORT 27014
ENV APP_GAME_NAME tf
ENV APP_SERVER_MAXPLAYERS 24
ENV APP_SERVER_MAP ctf_2fort
ENV USE_SRCDS true

RUN mkdir -p /home/steamsrv/.steam/sdk32/              && \
    ln -s /home/steamsrv/steamcmd/linux32/steamclient.so /home/steamsrv/.steam/sdk32/steamclient.so


EXPOSE ${APP_SERVER_PORT}

USER steamsrv

CMD /scripts/StartServer
