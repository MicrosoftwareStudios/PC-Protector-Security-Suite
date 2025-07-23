#! /bin/bash

echo Home
echo -----
echo
if [ -f ~/Desktop/antivirus/disabled.log ]; then
	echo '  /|\   Status: At Risk'
	echo '/__.__\ Reccommended Action: Enable Protection'
else
	if [ -f ~/Desktop/antivirus/virus.log ]; then
		echo '  /|\   Status: Infected'
		echo '/__.__\ Reccommended Action: Run Malware Removal Tool'
	else
		if [ -f ~/Desktop/antivirus/madtrue.log ]; then
			echo '  /|\   Status: Infected'
			echo '/__.__\ Reccommended Action: Run Malware Removal Tool'
		else
			echo '   / Status: Protected'
			echo '\/   Reccommended Action: None'
		fi
	fi
fi
echo
echo
echo Actions
echo ---------
echo '[1] Antivirus scan'
echo '[2] Malware Removal Tool '
echo '[3] Backup & Restore'
echo '[4] Settings'
echo
read -p 'What would you like to do? : ' opt
if [ $opt == 1 ]; then
	lxterminal --command=~/Desktop/antivirus/scan.sh
	clear
	~/Desktop/antivirus/home.sh
else
	if [ $opt == 2 ]; then
		lxterminal --command=~/Desktop/antivirus/mrt.sh
		clear
		~/Desktop/antivirus/home.sh
	else
		if [ $opt == 3 ]; then
			clear
			~/Desktop/antivirus/br.sh
		else
			if [ $opt == 4 ]; then
				clear
				~/Desktop/antivirus/setts.sh
			fi
		fi
	fi
fi
