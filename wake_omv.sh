#!/bin/bash
# Author: Andreas
# Date: 2016-03-10
# Description: Wake up my local openmediavault NAS by Wake-On-Lan protocol (RFC
#              Send two magic packets with 1 s pause in between just to make sure.
wol bc:5f:f4:dd:0d:3c
sleep 1s
wol bc:5f:f4:dd:0d:3c

