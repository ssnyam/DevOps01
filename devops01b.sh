#!/bin/bash
#The script is used to display info. Sik Nyam 4/2020
#
#
clear
case $1 in
                                                                                                 
-volume)
	echo "=====Volumes and file system====="
	/bin/df -h
	echo " "
  ;;
-cpu)
	echo "=====CPU detail====="
	/bin/cat /proc/cpuinfo
	echo " "
  ;;
-ram)
  echo "=====Memory utilization====="
	/usr/bin/free -m
	echo " "
  ;;
-network)
  echo "=====Network and MAC Info====="
	/sbin/ip add | grep ether
	echo " "
  ;;
-all)
	echo "=====Volumes and file system====="
	/bin/df -h
	echo " "
	echo "=====CPU detail====="
	/bin/cat /proc/cpuinfo
	echo " "
  	echo "=====Memory utilization====="
	/usr/bin/free
	echo " "
  	echo "=====Network Info====="
	/sbin/ip add | grep ether
	echo " "
;;
*)
  echo "Usage: $0 ARG (Choices: "-volumes", "-cpu", "-ram", "-network", "-all"):"
  ;;
esac
#
