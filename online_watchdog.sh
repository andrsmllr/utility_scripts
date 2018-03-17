#!/bin/bash
#
# Test if online connection available by doing some nslookups.
# Write log message about online status to log file.
#
log=~/.online_watchdog.log
declare -a test_sites=(google.ru amazon.de facebook.com)
timestamp=`date +%Y-%m-%d_%H:%M:%S`
for site in "${test_sites[@]}"; do
    status=`nslookup $site | grep answer`
    if [ "$status" == "" ]; then
        printf "$timestamp : Online connection NOK! (nslookup for $site failed)\n" >> $log
        exit 2
    fi
done
printf "$timestamp : Online connection ok\n" >> $log
exit 0
