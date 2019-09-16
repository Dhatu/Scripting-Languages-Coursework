
#! /bin/bash
if [ -d "$1" ]; then
cd $1
   echo "Current date and time: $(date +"%D %T")"
   echo "Current directory is: $(pwd)\n"
   echo "--- 10 most recently modified subdirectories ---"
   ls -ltp | grep "/" | head -n 10
   echo "\n"
   echo "---6 largest files ---"
   find . |ls -l | grep -Ev "total" |sort -nr|head -n 6
   echo "\n"
   echo "======================================================================"
else
   echo "Directory not exist!!!"
fi