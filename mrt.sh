#! /bin/bash
echo Malware Removal Tool
echo ------------------------
echo 
read -p 'Press ENTER to continue...' oopsde
echo 
echo Cleaning your Computer...
echo 
cd ~/RANSOM-i360
if [ -f encrypto.sh ]; then
	echo Removing TROJAN.RANSOMWARE.PcProtect.RANSOM-i360.LINUX
	read -p 'Continue?' oopes
	cd ~/Desktop/antivirus
	sudo rm -r virus.log
	cd ~
	sudo rm -r RANSOM-i360
fi
cd ~
if [ -f wannacry.exe ]; then

	echo Removing TROJAN.RANSOMWARE.WANNACRYPT0R.WIN32/WIN64
	read -p 'Continue?' oopes
	cd ~/Desktop/antivirus
	sudo rm -r virus.log
	cd ~
	sudo rm -r wannacry.exe
fi
cd ~
if [ -f virus.sh ]; then

	echo Removing TROJAN.JOKE.MISSING-FILE.LINUX.SH
	read -p 'Continue?' oopes
	cd ~/Desktop/antivirus
	sudo rm -r virus.log
	cd ~
	sudo rm -r virus.sh
fi
