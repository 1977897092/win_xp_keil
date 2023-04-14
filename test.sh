#!/bin/bash

ratio_display()
{

    local ratio_length=50
    local delay_time_max=60
    local mark=''
    local ratio
    local delay_time
    for ((i=0;i<=$delay_time_max;i++))
    do
        delay_time=`awk 'BEGIN{printf "%.2f\n",'$delay_time_max'/'$ratio_length'}'`
        ratio=`awk 'BEGIN{printf "%.2f\n",'$i'*'100'/'$delay_time_max'}'`
        # echo $delay_time
        # echo $ratio
        printf "progress:[%-60s]%.2f%%\r" "${mark}" "${ratio}"
        sleep $delay_time
        mark="#${mark}"
    done
    echo
}


ratio_display
# c=`awk -v x=2.45 -v y=3.123 'BEGIN{printf "%.2f\n",x*y}'`
# echo $c


# mark=''
# for ((ratio=0;${ratio}<=60;ratio+=1))
# do
#         printf "progress:[%-60s]%d%%\r" "${mark}" "${ratio}"
#         sleep 1.66
#         mark="#${mark}"
# done


#轮询虚拟机
# for ((i=1;i<=20;i++))
# do
#     if (( i > 10 ));then
#         if  VBoxManage guestcontrol "xp-keil" stat "C:\Keil_v5\UV4\UV4.exe" --username Administrator | grep "found";then
#             echo "virtual machine is online"
#         else
#             sleep 1s
#         fi
#     else
#         sleep 1s
#     fi
# done