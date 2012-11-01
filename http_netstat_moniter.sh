#!/bin/sh

#2012.11.01 by dancal
while(true)
do
    #date
        ESTABLISH=`netstat -na | grep 80 | grep -v 800 | grep EST | wc -l`
        CLOSE_WAIT=`netstat -na | grep 80  | grep -v 800 | grep CLO | wc -l`
        TIME_WAIT=`netstat -na | grep 80  | grep -v 800 | grep TIM | wc -l`
        echo -ne "ESTABLISH : $ESTABLISH, CLOSE_WAIT : $CLOSE_WAIT, TIME_WAIT : $TIME_WAIT \033[0K\r"
        sleep 1
done
