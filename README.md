# nextcloud-docker

Sync folders with a nextcloud server while the program runs inside a docker container.  
It uses docker compose und a makefile for control.  
See https://docs.docker.com/compose/gettingstarted/

## config

* nextcloud folder:  
    create a folder or a symlink with the name `nextcloud` that points to your storage.

* nextcloud.env  
    set username, password and server address here

* config/unsyncedfolders  
    text file with folders NOT to sync, one line per folder
    
## install

build the container with `make build`.  
start the container with `make up`.  
use `run.sh` to start the container with crontab. This shell script checks if the container is not already running.  
for example to sync every 5 minutes add this to your crontab:  
`*/5 * * * * /PATH/run.sh > /dev/null 2>&1 || true`  
change `PATH` to your path accordingly.  

Because Sqlite journaling mode 'wal' doesn't work on mounted volumes, the environment variable  
`OWNCLOUD_SQLITE_JOURNAL_MODE=DELETE`  
is set to fix the `'Sqlite exec statement error: 5 "database is locked"'` error.
