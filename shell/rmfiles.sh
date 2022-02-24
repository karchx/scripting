#!bin/bash

monthlast=`date --date='-1 month' '+%Y-%m-%d'`
monthnow=`date '+%Y-%m-%d'`

#-newermt 2022-02-24

for file in $(find /home/testcompartida/ -newermt "$monthlast" -type f)
do
        echo "$file"
        #| awk '{print $7,$6,$8}' | date --date='-1 month' '+%Y-%m'
done

#find /home/testcompartida -type f -mtime +60 | xargs rm -rf > /dev/null 2>&1


#| ls -l | awk '{print $7,$6,$8}' | date '+%Y-%m'
