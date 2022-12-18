# nextcloud-docker

Sync folder with nextcloud account with a docker container.
It uses docker compose und a makefile to control

## config

* nextcloud
    folder or symlink to folder

* nextcloud.env
    set username and password here

* config/unsyncedfolders
    text file with folders NOT to sync, one line per folder
    
## install

create the container with `make build`.

use `run.sh` to start the container. This shell script checks if the container is not already running and has a workaround for a database problem with the nextcloud client.