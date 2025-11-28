#!/bin/bash
R="\e[31m" # Red color
G="\e[32m" # Green color
Y="\e[0;33m" # Yellow color]
B="\e[1;33M" # Bold Yellow color
O="\e[1;34m" # Bold Blue color
N="\e[0m"  # No Color

LOGS_FOLDER="/var/log/shell-roboshop"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1) #. tarvatha vache daani print cheyadu 
SCRIPT_DIR=$PWD
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo -e "$G script started executed at : $(date) $N" | tee -a $LOG_FILE #tee lets you see the output on the screen while also saving it to a

SOURCE_DIR=home/ec2-user/app-logs

if [ ! -d "$SOURCE_DIR" ]; then
  echo -e "$R Source directory $SOURCE_DIR does not exist. Exiting. $N" | tee -a $LOG_FILE
  exit 1
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -name "*.log" -mtime +14) #find command to locate .log files older than 14 days