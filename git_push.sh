#!/bin/bash
#
# Author: Andreas Mueller
# Date: 2016-03-17
# Description: Check each subfolder if it is a git repo and push it.
#

find . -mindepth 1 -maxdepth 1 -type d -exec sh -c '
  cd {};
  if [ -e ./.git ]; then
    echo "### Pushing $1 ###";
    git push;
  else
    echo "### Skipping $1, not a git repo ###";
  fi;
' 0 {} \;
