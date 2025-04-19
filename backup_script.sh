#!/bin/bash
BACKUP_SOURCE=$1
DATE=$(date +%F)
RETENTION_DAYS=7
BACKUP_DEST="/home/vagrant/backups/archive-${DATE}.tar.gz"
LOG_FILE="/home/vagrant/logs/log_file"

mkdir -p "/home/vagrant/backups" "/home/vagrant/logs"

# Validate BACKUP_SOURCE
if [ -z "$BACKUP_SOURCE" ]; then
    echo "Error: No backup source specified." | mail -s "Backup Error: Missing Argument" saad.ahmed.200168@gmail.com
    exit 1
fi

# Perform backup with error handling
if ! tar -czf "${BACKUP_DEST}" "${BACKUP_SOURCE}" 2>> "$LOG_FILE" ; then
    echo "There was an error in archiving or compression" | mail -s "Backup Error" saad.ahmed.200168@gmail.com
    exit 1
fi

find "/home/vagrant/backups" -name "archive-*.tar.gz" -mtime +$((RETENTION_DAYS - 1)) -exec rm {} \;
# ------Logging-------
echo  "Backup of ${BACKUP_SOURCE} completed. Archive: ${BACKUP_DEST}" >>${LOG_FILE}
tail -n 5 "$LOG_FILE" > "${LOG_FILE}.tmp" && mv "${LOG_FILE}.tmp" "${LOG_FILE}"
