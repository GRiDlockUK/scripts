# !/usr/bin/env bash

# Default values
HOSTNAME=`hostname`
TODAYDATE=`date +"%Y%m%d"`

HOME_DIR="/home/pi"
SCRIPT_FOLDER="$HOME_DIR/scripts"
PYTHON_FOLDER="$HOME_DIR/python"
DOCKER_FOLDER="$HOME_DIR/docker"
BACKUP_FOLDER="$HOME_DIR/backup"
UPLOAD_FOLDER="Apps/$HOSTNAME-backup/"
DROPBOXUPLOADER="$HOME_DIR/dropbox-uploader/dropbox_uploader.sh"

# Functions
function logwrite ()
{
  echo "[ $(date) ] $1"
}

function logsend ()
{
  echo "[ $(date) ] $1"
  python3 $PYTHON_FOLDER/sendmail.py -s "$HOSTNAME: $SCRIPTNAME" -b "[ $(date) ] $1"
}
