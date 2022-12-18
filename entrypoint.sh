#!/bin/bash
# entrypoint.sh
echo "Resetting DB Journal Mode..."
dbfile=( /nextcloud/.*.db )
/usr/bin/sqlite3 $dbfile 'PRAGMA journal_mode = delete;'

echo "Running nextcloud sync.."
nextcloudcmd --unsyncedfolders /config/unsyncedfolders /nextcloud https://$NEXTCLOUD_USER:$NEXTCLOUD_PWD@nextcloud.caveserver.de
