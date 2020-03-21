#!/bin/bash
# backupVM.bash
# Purpose: Create system info report
#
# USAGE: ./report.bash
#
# Author: Heedong Yang
# Date: 3/19/2020
IMGPATH='/var/lib/libvirt/images'
if [ $UID != "0" ]; then
	echo "You must run this scripts as a root user"
	exit 1
fi
previous_path=$(pwd)
read -p "Backup all VMs? [y|n]:" answer

if [[ "$answer" = "y" || "$answer" = "Y" ]]; then
	for num in 1 2 3 ; do
    cd $IMGPATH
		echo "Backing up VM $num"
		virsh dumpxml centos${num} > centos${num}.xml
		cp centos${num}.qcow2 ~hyang117/centos${num}.qcow2
		cp centos${num}.xml ~hyang117/centos${num}.xml
		cd ~hyang117
		tar czf centos${num}.tar.gz centos${num}*
		echo "VM $num BACKUP DONE"
		cd $previous_path
		done

elif [[ "$answer" = "n" || "$answer" = "N" ]] ; then
	read -p "Which VM should be backed up? [1/2/3]:" vmnum
	if [[ "$vmnum" =~ ^(1|2|3)$ ]] ; then
	  cd $IMGPATH
		cp centos${vmnum}.qcow2 ~hyang117/centos${vmnum}.qcow2
		cp centos${vmnum}.xml ~hyang117/centos${vmnum}.xml
		cd ~hyang117
		tar czf centos${vmnum}.tar.gz centos${vmnum}*
		echo "VM $num BACKUP DONE"
		cd $previous_path
	else
		echo "Invalid Selection... Aborting program"
		exit 1
	fi

else
	echo "Invalid Selection... Aborting program"
	exit 2
fi

read -p "Do you want to delete uncompressed files(y/n)?" choice
if [ "$choice" == "y" ] ; then
	cd ~hyang117
	echo "Deleting it... you have 3 seconds to halt the command..."
	sleep 3s
	rm -f *.qcow2
	rm -f *.xml
	cd $previous_path
	echo "...Done"
fi
