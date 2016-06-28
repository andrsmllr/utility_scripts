#!/bin/bash
#
# File:   git_status.sh
# Author: Andreas Mueller
# Date:   2016-03-17
#
# Description: Check each subfolder if it is a git repo and print its status it.
#

find . -mindepth 1 -maxdepth 1 -type d -exec sh -c '
  cd "$1";
  echo "### Status of $1 ###";
  git status;
' 0 {} \;
