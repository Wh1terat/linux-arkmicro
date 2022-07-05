#!/bin/sh

while true
do
    ps -ef | grep  "/usr/bin/TYW_AWTK/C281_1668E_DASHBOARD" | grep -v "grep" > /dev/null
    if [ "$?" -eq 1 ]
        then
         /usr/bin/TYW_AWTK/C281_1668E_DASHBOARD & #启动应用，修改成自己的启动应用脚本或命令
#       echo "process has been restarted!"
#   else
#       echo "process already started!"
    fi
    sleep 5
done
