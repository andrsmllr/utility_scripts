#!/bin/bash
#
# File:   git_pull.sh
# Author: Andreas Mueller
# Date:   2016-03-17
#
# Description: Check each subfolder if it is a git repo and pull the
#              latest changes from origin master.
#

find . -mindepth 1 -maxdepth 1 -type d -exec sh -c '
  cd "$1";
  if [ -e ./.git ]; then
    echo "### Updating $1 ###";
    git pull;
  else
    echo "### Skipping $1, not a git repo ###";
  fi;
' 0 {} \;
