#!/bin/bash

# Deletes .nanorc in home
rm -f -r ~/.nanorc

# Removes text from .bashrc
sed -i `s/"source ~/.dotfiles/etc/bashrc_custom"//` ~/.bashrc

# Deletes .TRASH in home
rm -f -r ~/.TRASH
