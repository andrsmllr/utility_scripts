#!/bin/bash
#
# File:   mount_omv_nas.sh
# Date:   2016-07-10
# Author: Andreas Mueller
#
# Description: Mount my Openmediavault NAS unionfs share.
#              Note: Requires root privileges.
#
mount -t cifs -o username=kodi //192.168.0.20/omv_union_share /mnt/omv_union_share
