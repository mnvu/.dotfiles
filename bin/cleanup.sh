#!/bin/bash

#Remove .nanorc file in home directory
rm ~/.nanorc

#Remove line in .bashrc file
sed -i"source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc

rm -rf ~/.TRASH
