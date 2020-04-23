#!/bin/bash
#
#Gather disk space and volumes.
/bin/df -h			> /home/patrick/DevOps01/devops01a.out
#Gather CPU info
/bin/cat /proc/cpuinfo		>> /home/patrick/DevOps01/devops01a.out
#Gather Memory info.
/usr/bin/free			>> /home/patrick/DevOps01/devops01a.out
# Gather MAC and IP.
/sbin/ip add | grep ether	>> /home/patrick/DevOps01/devops01a.out

