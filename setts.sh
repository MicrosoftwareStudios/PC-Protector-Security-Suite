#! /bin/bash
echo Settings
echo ----------
echo 
echo Options
echo '[1] Enable/Disable Antivirus'
echo '[2] Scheduled Operations'
echo '[3] Exit '
echo 
read -p 'Select an option : ' options
if [ $options == 1 ]; then
	clear
	echo 'Would you like to enable the Antivirus? [e/d]'
	echo
	read -p '' aved
	if [ $aved == e ]; then
		rm ~/Desktop/antivirus/disabled.log
		clear
		~/Desktop/antivirus/home.sh
	else
		touch ~/Desktop/antivirus/disabled.log
		clear
		~/Desktop/antivirus/home.sh
	fi
	clear
	~/Desktop/antivirus/home.sh
else
	if [ $options == 2 ]; then
		clear
		echo 'What would you like to schedule to run on startup?'
		echo '[1] Antivirus scan'
		echo '[Unavailable] Backup'
		echo '[3] Exit'
		echo '[4] Remove a schedule'
		read -p 'Choose an option ; ' sched
		if [ $sched == 1 ]; then
			sudo cp ~/Desktop/antivirus/avscan.desktop ~/.config/autostart
			clear
			~/Desktop/antivirus/setts.sh
		else
			if [ $sched == 2 ]; then
				sudo cp ~/Desktop/antivirus/backup.desktop ~/.config/autostart
				clear
				~/Desktop/antivirus/setts.sh
			else
				if [ $sched == 3 ]; then
					clear
					~/Desktop/antivirus/setts.sh
				else
					if [ $sched== 4 ]; then
						clear
						echo Which schedule would you like to remove?
						echo '[1] Antivirus Scan'
						echo '[2] Backup'
						read -p 'Choose an option : ' subopt
						if [ $subopt == 1 ]; then
							sudo rm ~/.config/autostart/avscan.desktop
							clear
							~/Desktop/antivirus/home.sh
						else
							sudo rm ~/.config/autostart/backup.desktop
							clear
							~/Desktop/antivirus/home.sh
						fi
					fi
				fi
			fi
		fi
	else
		if [ $options == 3 ]; then
			clear
			~/Desktop/antivirus/home.sh
		fi
	fi
fi
