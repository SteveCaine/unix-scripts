#!/bin/sh

# checkall.sh
# Terminal script to execute 'git status' on working copies
# of my public GitHub repositories in current directory

# to use: 
# 1) copy this file to folder where you want to check git status of my code
# 2) in Terminal, cd to folder containing copied script
# 3) type './checkall.sh' in Terminal and hit Return 
# working copies for each of my repositories, if present, will be checked

checkWC()
{
	echo '----------'
	if  [ -d $WC ]
	then
		cd $WC
		pwd
		git status
		cd ..
	else
		echo "ERROR: working copy '$WC' not found"
	fi
#	echo
}

echo
echo '----------'
echo "checking git status for working copies in '$PWD'"

WC="DebugUtil"
checkWC
WC="FilesUtil"
checkWC
WC="MapUtil"
checkWC
WC="MBTA-Mantle"
checkWC
WC="MBTA-RestKit"
checkWC
WC="MBTA-RZImport"
checkWC
WC="NextBus-Mantle"
checkWC
WC="unix-scripts"
checkWC

echo '----------'
echo "finished checkall in '$PWD'"
