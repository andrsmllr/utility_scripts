#!/bin/bash
#
# Test if online connection available by doing some nslookups.
# Write log message about online status to log file.
#
log=online_watchdog.log
test_sites=(google.ru amazon.de facebook.com)
#for i in $(seq 1..3)
timestamp=`date +%Y-%m-%d_%H:%M:%S`
status=`nslookup google.de | grep answer`
if [ "$status" == "" ]; then
    printf "$timestamp : Online connection NOK!\n" >> $log
else
    printf "$timestamp : Online connection ok\n" >> $log
fi
exit 0

