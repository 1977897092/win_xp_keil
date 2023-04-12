#!/bin/bash
for ((i=1;i<=20;i++))
do
    if (( i > 10 ));then
        if  VBoxManage guestcontrol "xp-keil" stat "C:\Keil_v5\UV4\UV4.exe" --username Administrator | grep "found";then
            echo "virtual machine is online"
        else
            sleep 1s
        fi
    else
        sleep 1s
    fi
done