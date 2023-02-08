#!/bin/bash
#
#    Check the system
#

echo "Hello $USER"
echo "Memory:"
/usr/bin/free -h
echo "Disk usage:"
/usr/bin/df -h
echo "Uptime:"
/usr/bin/uptime

exit