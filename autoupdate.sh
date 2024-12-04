#!/bin/bash

date_time=$(date)

echo "Welcome $USER"

sleep 3

echo "$date_time"

sleep 1


echo "Beginning autoupdate script..."

sleep 2

sudo apt upgrade

sudo apt update -y

echo "Update Script Complete at: $date_time"


echo "Please select an option:"
select option in "reboot" "shutdown" "exit"; do
	case $REPLY in
		reboot)
			echo "Rebooting the Raspberry Pi..."
			sleep 2
			sudo reboot now
			;;
		shutdown)
			echo "Shutting down the Raspberry Pi..."
			sleep 2
			sudo shutdown -h now
			;;
		exit)
			echo "Exiting the script..."
			sleep 2
			exit 1
			;;
	esac
done

