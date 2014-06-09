#!/bin/bash

host=$(hostname)
log="/tmp/backup.log"
src=$HOME

echo "++ START BACKUP $(date)" > $log
echo "" >> $log
echo "host: $(hostname -f)" >> $log
echo "" >> $log

# rsync -a -R -r --stats --progress --delete --files-from=/Users/andy/backup_list --exclude-from=/Users/andy/backup_exclude /Users/andy/ /Volumes/backup/$host/ >> $log
rsync -a -R -r --stats --progress --delete --files-from=/Users/andy/.backup_list /Users/andy/ /Volumes/backup/Backup/ >> $log

echo "" >> $log
echo "-- END BACKUP $(date)" >> $log
