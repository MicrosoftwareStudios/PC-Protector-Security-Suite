#! /bin/bash
echo 'Backup & Restore'
echo -----------------
echo 
echo What would you like to do?
echo '[1] Back up'
echo '[2] Restore'
echo '[3] Exit'
echo 
read -p 'Choose an option : ' bac
if [ $bac == 1 ]; then
	lxterminal --command=~/Desktop/antivirus/backup.sh
	clear
	~/Desktop/antivirus/home.sh
else
	if [ $bac == 2 ]; then
		lxterminal --command=~/Desktop/antivirus/restore.sh
		clear
		~/Desktop/antivirus/home.sh
	else
		if [ $bac == 3 ]; then
			clear
			~/Desktop/antivirus/home.sh
		fi
	fi
fi
