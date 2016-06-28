#!/bin/bash
#
# File: git_rm_empty_leaf_files.sh
# Date: 2016-03-25
# Author: Andreas Mueller
#
# Description: Remove .empty files from all subdirectories.
#

empty_files=`find $1 -type f -name ".empty"`
rm $empty_files
