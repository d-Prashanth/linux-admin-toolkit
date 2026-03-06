#!/bin/bash

#keep track of the user history
LOG_FILE="/opt/linux-admin-toolkit/logs/user-management.log"

log() {

echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> "$LOG_FILE"

}
