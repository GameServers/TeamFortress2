# Team Fortress 2 Dedicated Server

The follwing docker image allows for running a Team Fortress 2 server

Container Runtime Environment Variables:

* APP_SERVER_PORT 		- Port for the game to run on (default 27015)
* APP_SERVER_MAXPLAYERS 	- Max number of players (default 24)
* APP_SERVER_MAP 		- Starting map (default ctf_2fort)
* APP_SERVER_TOKEN		- Use access token from [http://steamcommunity.com/dev/managegameservers](http://steamcommunity.com/dev/managegameservers)

Example docker run:
```
docker run --name "TF2-Server"		     \
  -e APP_SERVER_PORT=27014      	     \
  -e APP_SERVER_MAX_PLAYERS=24		     \
  -e APP_SERVER_MAP=ctf_2fort                \
  -e APP_SERVER_TOKEN=abc123                 \
  -v ~/DockerVolumes/tf2:/home/steamsrv/tf2  \
  -p 27015:27015                             \
  -p 27015:27015/udp                         \
  gameservers/teamfortress2:latest
```

