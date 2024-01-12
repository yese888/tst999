#!/bin/bash

while true; do
    p="yyyddd"

    if ! ps -ef | grep noscr | grep -v "grep" > /dev/null; then
        cd /root/tst999
        chmod 777 *
        screen -L -Logfile /run/noss.log -dmS noscr ./noscription-minter-linux-amd642 -p $p
    fi

    # 等待1分钟
    sleep 60
done
