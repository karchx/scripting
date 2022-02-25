#!/bin/bash

timemonth=$((60*60*24*30))

for file in /mnt/share/*.TXT
do
        filedate=`stat -c %Y "$file"`
        now=`date +%s`
        difference=$((${now} - ${filedate}))

        if [ ${difference} -gt ${timemonth} ]; then
                rm -rf $file >> /dev/null 2>&1
        fi
done