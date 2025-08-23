#!/bin/env bash
DIR="/home/vagrant/log"
# variables 
LOG_FILE="/home/vagrant/log/memory.log"
CURRENT_HOUR=$(date +"%H")
CURRENT_MINUTES=$(date +"%M")
EMAIL="emmakosikenn@gmail.com"
mkdir -p "$DIR"
MEMORY_USAGE=$(free -h)
    echo -e "\n  $(date)"  >> $LOG_FILE
    echo -e "  $MEMORY_USAGE "  >> $LOG_FILE


 if [[ "$CURRENT_MINUTES" == "00" ]]; then
    if [[ -s "$LOG_FILE" ]]; then
        SUBJECT="Daily Report for $(hostname)"
        mail -s "$SUBJECT" "$EMAIL" < "$LOG_FILE"
        > "$LOG_FILE"
    fi
fi

