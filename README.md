# Automate-a-Daily-System-Backup-Script

**Description**
This Bash script provides an automated solution for backing up directories with compression, log rotation, and email alerting for failures. It's designed for reliability and easy maintenance.

**Features**
  Compressed backups (.tar.gz format)
  Configurable retention policy
  Detailed logging with rotation
  Email alerts for failures
  Cron job integration

**Prerequisites**
  Bash shell
  tar utility
  mailutils or postfix for email alerts
  Proper permissions to read source directories and write to backup location

**Installation**
  1.Clone the repository:
    git clone https://github.com/saad-20190237/backup-script.git
    cd backup-script
  2.Make the script executable:
    chmod +x backup_script.sh

**Configuration**
  # Number of days to keep backups
  RETENTION_DAYS=7
  # Admin email for error notifications
  EMAIL="your-email@example.com"


**  Usage**
  ./backup_script.sh /path/to/directory
  Example
    ./backup_script.sh /var/www

**Automated Scheduling**
  # Run daily at 2 AM
  0 2 * * * /path/to/backup-script/backup_script.sh /var/www
