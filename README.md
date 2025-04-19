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
  
