#!/bin/bash
#
# File:   git_status.sh
# Author: Andreas Mueller
# Date:   2016-03-17
#
# Description: Check each subfolder if it is a git repo and print its status.
#


find . -mindepth 1 -maxdepth 1 -type d -exec sh -c '
  cd "$1";
  if [ -e ./.git ]; then
    echo "### Status of $1 ###";
    git status;
  else
    echo "### Skipping $1, not a git repo ###";
  fi;
' 0 {} \;

