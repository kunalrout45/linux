#!/bin/bash

PASSWORD="******" #your password
MAX_COUNT=3
COUNT=0
trap 'echo -e "HEINN CHALAKI ???  Ctrl+C bhul ja "' SIGINT

 while [ $COUNT -lt $MAX_COUNT ]; do

	read -sp "KAUN HAI BE TU ? chal code bata -> " input
	
	echo 
	if [[ "$input" == "$PASSWORD" ]]; then
		echo "Malik aap, aaiye :)"
		break
	else
		echo "Na bhai na , wapas bata -> "
	   (( COUNT++ ))
	fi
done
 if [[ $COUNT -eq 3 ]]; then 
    echo "!!! CHOR HO AAP !!! MALIK SAHI WALA JANTE HAIN , BIE BIE "
   sleep 3
   sudo shutdown now

fi

#Configure passwordless sudo for shutdown:
#sudo visudo
#your_username ALL=(ALL) NOPASSWD: /sbin/shutdown
#load this script to .bashrc so that it runs during system boot and everytime a new terminal opens.
