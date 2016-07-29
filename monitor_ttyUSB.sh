#!/bin/bash
#
# File:   monitor_ttyUSB.sh
# Date:   2016-06-25
# Author: Andreas Mueller
#
# Description: Print characters received on a USB-UART bridge (device called
#              /dev/ttyUSBX). The device name must be given as argument.
#              Motivated by a comment from
#              http://unix.stackexchange.com/questions/120992/why-does-cat-ttyusb0-not-produce-output.
#

stty raw -echo < /dev/$1; cat -vte /dev/$1
