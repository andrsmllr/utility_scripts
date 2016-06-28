#!/bin/bash
#
# File: git_add_empty_leaf_files.sh
# Date: 2016-03-25
# Author: Andreas Mueller
#
# Description: Add a .empty file into each empty leaf directory. This is to allow
#              adding the "empty" folder by instead adding the .empty file.
#

#empty_dirs=`find $1 -type d -links 2` # This only gives dirs without subdirs, files may be present.
empty_dirs=`find $1 -type d -empty`

#if [ -e $1/.git ]; then
  for d in $empty_dirs; do
    echo "Adding .empty file to $d."
    touch $d/.empty
  done
#else
#  echo "### Directory $1 is not a git repo. ###"
#fi
