#!/bin/bash
MAILBOX=$1
DATE=`date +%Y-%m-%d`
HOUR=`date +%H`
DOMAIN=`echo "$MAILBOX"|cut -d\@ -f2`
if [ `echo "$MAILBOX"|grep null|wc -l` = 1 ]; then
        echo "detect null"
else
        mysql -u postfixadm -pPASSWORD -e "insert into postfixstat values('$DOMAIN','1','$DATE','$HOUR') ON DUPLICATE KEY UPDATE cnt = cnt + VALUES(cnt)" postfixdb
fi