# !/usr/bin/env bash

# Local values
SCRIPTNAME=${0##*/}
BASEDIR=$(dirname $0)

# Import functions
. $BASEDIR/common.sh

# Main code
logsend "START - $SCRIPTNAME"

logwrite "uploading backups to dropbox..."
$DROPBOXUPLOADER  upload  $BACKUP_FOLDER/*  $UPLOAD_FOLDER
logwrite "...done"

logsend "END - $SCRIPTNAME"
