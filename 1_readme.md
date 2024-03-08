sudo crontab -e

0 3 * * * /sbin/shutdown -r +5
0 4 * * * bash /home/pi/scripts/create_backup.sh
0 5 * * * bash /home/pi/scripts/upload_backup_dropbox.sh
