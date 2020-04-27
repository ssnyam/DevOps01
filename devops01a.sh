#!/bin/bash
#The script is used to gather information. Sik Nyam 4/2020
#
#A one-liner will be as follow.
#df -h;/bin/cat /proc/cpuinfo;free;ip add | grep ether
#
#
echo "Disk Space and Volume"    >/home/patrick/DevOps01/devops01a.out
/bin/df -h                      >> /home/patrick/DevOps01/devops01a.out
echo " "                        >>/home/patrick/DevOps01/devops01a.out
#Gather CPU info
echo "CPU Info"                 >>/home/patrick/DevOps01/devops01a.out
/bin/cat /proc/cpuinfo          >> /home/patrick/DevOps01/devops01a.out
echo " "                        >>/home/patrick/DevOps01/devops01a.out
#Gather Memory info.
echo "Memory Info"              >>/home/patrick/DevOps01/devops01a.out
/usr/bin/free                   >> /home/patrick/DevOps01/devops01a.out
echo " "                        >>/home/patrick/DevOps01/devops01a.out
# Gather MAC and IP.
echo "MAC and IP Info"          >>/home/patrick/DevOps01/devops01a.out
/sbin/ip add | grep ether       >> /home/patrick/DevOps01/devops01a.out
echo " "                        >>/home/patrick/DevOps01/devops01a.out

