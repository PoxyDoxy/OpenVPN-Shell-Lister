#!/bin/bash
#cat /etc/openvpn/openvpn-status.log
while :
do
	# Reset the Console
	echo -e '\0033\0143'
	while read line; do
		if [[ $line == *"OpenVPN"* ]]
			then
				# Do Nothing
				:
		elif [[ $line == *"Connected Since"* ]]
			then
				printf "======= Clients ======>\n";
				echo "===|" $line;
		elif [[ $line == *"ROUTING"* ]]
			then
				# Print End of Clients
				printf "======================>\n";
		elif [[ $line == *"Virtual Address"* ]]
			then
				printf "===/ Routing Table ===>\n";
				echo "===|" $line;
		elif [[ $line == *"GLOBAL STATS"* ]]
			then
				# Print End of Routing Table
				printf "======================>\n";
		elif [[ $line == *"END"* ]]
			then
				:
		elif [[ $line == *"."* ]]
			then
				echo "===|" $line;
			else
				echo $line;
		fi
		done </etc/openvpn/openvpn-status.log
# OpenVPN Only Updates the File Every 10s, so anything quicker is pointless.
sleep 9s
done