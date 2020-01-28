#!/usr/bin/bash

# Check our system.

CPATH="/usr/bin/"
echo "============ Memory ======================= "
${CPATH}free -hm
echo "============ Disk Usage =================== "
${CPATH}df -h
echo "============ Uptime ======================= "
${CPATH}uptime
echo "============ System Information =========== "
${CPATH}uname -rv
exit


