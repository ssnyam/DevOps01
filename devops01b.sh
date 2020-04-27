#!/bin/bash
#The script is used to gather disk space and volumes. Sik Nyam 4/2020
#
if [ -z "$1" ]; then
	echo "Please enter an argument: "
echo Choices:
echo	-cpu
echo	-ram
echo	-network
echo	-all
exit
fi
#
if [ $1 == -cpu ]; then
/bin/cat /proc/cpuinfo		> /home/patrick/DevOps01/devops01b.out
exit
#
elif [ $1 == -ram ]; then
/usr/bin/free			> /home/patrick/DevOps01/devops01b.out
exit
#
elif [ $1 == -network ]; then
/sbin/ip add | grep ether	> /home/patrick/DevOps01/devops01b.out
exit
#
elif [ $1 == -all ]; then
/bin/cat /proc/cpuinfo          > /home/patrick/DevOps01/devops01b.out
/usr/bin/free                   >> /home/patrick/DevOps01/devops01b.out
/sbin/ip add | grep ether	>> /home/patrick/DevOps01/devops01b.out
fi

