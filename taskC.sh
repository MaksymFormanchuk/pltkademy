#!/bin/bash
hostname=`hostname`
cores=`cat /proc/cpuinfo | grep 'cpu cores'`
memory=`cat /proc/meminfo | grep MemTotal`
disk=`sudo fdisk -l | grep "^Disk /" | gawk '{print $3,$4}' | head -n 1`


echo -e "Hostname is $hostname;\n$cores;\n$memory;\ntotal disk size: $disk"
