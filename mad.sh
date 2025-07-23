#! /bin/bash
cd ~/Desktop
if [ -f .testfile.pcps ]; then
	cd ~/Desktop/antivirus
	rm madtrue.log
else
	cd antivirus
	echo > madtrue.log
fi
