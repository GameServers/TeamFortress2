# Fistful Of Frags Dedicated Server

The follwing docker image allows for running a Fistful Of Frags server

Container Runtime Environment Variables:

* APP_SERVER_PORT 		- Port for the game to run on (default 27014)
* APP_SERVER_MAXPLAYERS 	- Max number of players (default 24)
* APP_SERVER_MAP 		- Starting map (default ctf_2fort)

Example docker run:
```
docker run --name "TF2-Server"		     \
  -e APP_SERVER_PORT=27014      	     \
  -e APP_SERVER_MAX_PLAYERS=24		     \
  -e APP_SERVER_MAP=ctf_2fort                \
  -v ~/DockerVolumes/tf2:/home/steamsrv/tf2  \
  -p 27014:27014                             \
  gameservers/teamfortress2:latest
```

