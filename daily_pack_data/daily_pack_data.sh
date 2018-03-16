#!/bin/bash
set -e

###
# work on local xserver
### 
LOGFILE=/tmp/daily_pack_xxxxxx_platform_backup_data.log
YEAR=$(date '+%Y')
MONTH=$(date '+%m')
DAY=$(date '+%d')
REMOTEHOST="10.8.8.888"
LOCALWORKDIR=/homecccccccccccccccccccccccc-backup/
REMOTEWORKDIR=/cccccccccccccccccccccc_backups/

DAILYFOLDERNAME="tianji_$YEAR-$MONTH-$DAY" # example: tianji_2018-03-16

# Pack Data
{
  cd "$LOCALWORKDIR"
  $(which 7za) a "$DAILYFOLDERNAME.7z" ./"$DAILYFOLDERNAME/data/"
  $(which 7za) a "$DAILYFOLDERNAME.7z" ./"$DAILYFOLDERNAME/table/"
} >> "$LOGFILE"

# Send to backup server
{
  scp ./"$DAILYFOLDERNAME.7z" master@"$REMOTEHOST":"$REMOTEWORKDIR"
} >> "$LOGFILE"
