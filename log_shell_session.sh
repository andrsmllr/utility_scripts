#!/bin/bash
#
# File:   log_shell_session.txt
# Date:   2016-07-09
# Author: Andreas Mueller
#
# Description: Log the history of a shell session.
#              Note: Copy(!) command below to ~/.bashrc to automatically
#                    log every bash session.
#

test "$(ps -ocommand= -p $PPID | awk '{print $1}')" == 'script' || \
  (script -a -f $HOME/log/shell_session_$(date +%Y-%m-%d_%H:%M:%S_$$_${RANDOM}).log)
