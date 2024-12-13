#!/bin/bash

SystemType=$(uname)

##Checks if the operating system type is Linux
if ["$SystemType"!="Linux"]; then
	echo "Operating system type error">>./bin/linuxsetup.log
	exit
fi

#Make new directory if it doesn't exist
mkdir -p ~/.TRASH

#Change the name of .nanorc in home directory
mv ~/.nanorc .bup_nanorc
echo "The name of .nanorc was changed to .bup_nanorc">>./bin/linuxsetup.log

#Overwrite contents of etc/nanorc file to .nanorc in home directory
cat ./etc/nanorc>~/.nanorc

#Add statement to .bashrc in home directory
echo "~/.dotfiles/etc/bashrc_custom">>~/.bashrc
