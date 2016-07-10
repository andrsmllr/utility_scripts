#!/bin/bash
# Author: Andreas
# Date: 2016-03-10
# Description: Wake up my local openmediavault NAS by Wake-On-Lan protocol .
#              Send two magic packets with 1 s pause in between just to make sure.

# Try both wol and wakeonlan, one of them should work :-p
wakeonlan bc:5f:f4:dd:0d:3c
wol bc:5f:f4:dd:0d:3c
sleep 1s
wakeonlan bc:5f:f4:dd:0d:3c
wol bc:5f:f4:dd:0d:3c
