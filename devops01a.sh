#!/bin/bash
#The script is used to gather information. Sik Nyam 4/2020
#
#A one-liner can be executed be as follow.
#df -h;/bin/cat /proc/cpuinfo;free;/sbin/ifconfig -a | egrep 'HWaddr|inet addr'
#
#
echo "Disk Space and Volume"
/bin/df -h                 
echo " "                  
#Gather CPU info
echo "CPU Info"          
/bin/cat /proc/cpuinfo  
echo " "               
#Gather Memory info.
echo "Memory Info"    
/usr/bin/free       
echo " "             
# Gather MAC and IP.
echo "MAC and IP Info" 
/sbin/ifconfig -a | egrep 'HWaddr|inet addr' 
echo " "    
