#!/bin/bash

# Checks if operating system is Linux
nameVar=`uname`
if [ $nameVar == "Linux" ]; then
	# Makes a trash directory, if it doesn't already exist.
	mkdir -p ~/.TRASH
	# Changes .nanorc to .bup_nanorc, if .nanorc exists
	mv ~/.nanorc ~/.bup_nanorc | echo ".nanorc changed to .bup_nanorc" >> linuxsetup.log
	# Puts the contents of /etc/.nanorc to the home directory's ~/.nanorc
	cat ../etc/nanorc > ~/.nanorc
	# Adds text to ~/.bashrc
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
else
	echo "Error: Operating system is not Linux" >> linuxsetup.log
fi
