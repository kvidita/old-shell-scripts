#! /bin/zsh

# tar the files to a backup directory
# create the backup file with timestamp as file_name_ddmmyyyy

#FILE=$1
#DESTINATION=~/Backup/
#TIMESTAMP=$(date "+%d_%m_%Y_%H%M")
#ARCHIVE=$DESTINATION\_$FILE\_$TIMESTAMP.tar.gz
#
#tar -cvzf $ARCHIVE $FILE 














# create a restore file
# extract the files you archived in backup
# SYNOPSIS: 	.Backup.sh archive_name location_to_archive

RESTORE=$1
LOCATION_OF_RESTORATION=$2
FILE_TO_RESTORE=~/Backup$RESTORE



tar -xvzf $FILE_TO_RESTORE -C $LOCATION_OF_RESTORATION
