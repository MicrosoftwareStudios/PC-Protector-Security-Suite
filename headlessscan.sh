#! /bin/bash
#RANSOM-i360
cd ~/RANSOM-i360
if [ -f encrypto.sh ]; then
	touch ~/Desktop/antivirus/virus.log
	echo Found TROJAN.RANSOMWARE.PcProtect.RANSOM-i360.LINUX.SH
	read -p 'Continue?' oopes
fi
#Wannacry
cd ~
if [ -f wannacry.exe ]; then
	touch ~/Desktop/antivirus/virus.log
	echo Found TROJAN.RANSOMWARE.WANNACRYPT0R.WIN32/WIN64.EXE
	read -p 'Continue?' oopes
fi
#Joke
cd ~
if [ -f virus.sh ]; then
	touch ~/Desktop/antivirus/virus.log
	echo Found TROJAN.JOKE.MISSING-FILE.LINUX.SH
	read -p 'Continue?' oopes
fi
