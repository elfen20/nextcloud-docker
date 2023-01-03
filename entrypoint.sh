#!/bin/bash
# entrypoint.sh
echo "Running nextcloud sync.."
nextcloudcmd --unsyncedfolders /config/unsyncedfolders /nextcloud https://$NEXTCLOUD_USER:$NEXTCLOUD_PWD@$NEXTCLOUD_SRV
