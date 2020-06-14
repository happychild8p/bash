#!/bin/bash

#MADE BY HAPPYCHILD:)
#FOR BACKING UP

IMGPATH='/var/lib/libvirt/images'
NAME='hyang117.ops'
for num in 1 2 3
do
	cd ${IMGPATH}
	echo "Creating the xml file for vm$num"
	virsh dumpxml vm${num}.${NAME} > vm${num}.${NAME}.xml 
	echo "...Done"
	echo "Backing up vm$num"
	pv vm${num}.${NAME}.qcow2 > /backups/vm${num}.${NAME}.qcow2
	pv vm${num}.${NAME}.xml > /backups/vm${num}.${NAME}.xml
	echo "...Done"
	sleep 1s
	echo "Compressing vm$num"
	cd /backups
	tar -czf - ./vm${num}* | pv > vm${num}.tgz 
	echo "..."
	sleep 1s
done

echo "...Done Check if it is correctly done."

read -p "Do you want me to delete the uncompressed files(y/n)?" answer
if [ "$answer" == "y" ]
then
	echo "Deleting it... have 3 seconds to halt the command..."
	sleep 4s
	rm -f *.qcow2
	rm -f *.xml
fi
