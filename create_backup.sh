# !/usr/bin/env bash

# Local values
SCRIPTNAME=${0##*/}
BASEDIR=$(dirname $0)

# Import functions
. $BASEDIR/common.sh

# Main code
logsend "START - $SCRIPTNAME"

logwrite "creating script backup..."
tar -czf $BACKUP_FOLDER/scripts_$HOSTNAME.gz $SCRIPT_FOLDER

logwrite "creating python backup..."
tar -czf $BACKUP_FOLDER/python_$HOSTNAME.gz $PYTHON_FOLDER

logwrite "creating docker backup..."
tar -czf $BACKUP_FOLDER/docker_$HOSTNAME.gz $DOCKER_FOLDER

logwrite "changing backup permssions..."
chmod 775 $BACKUP_FOLDER/*

logsend "END - $SCRIPTNAME"


