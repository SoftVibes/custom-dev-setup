#!/bin/bash

sudo apt install python3
sudo apt install python3-pip

cd ~

if [ -f ".bash_aliases" ]
then
    echo "alias python='python3'" >> ~/.bash_aliases
    echo "alias pip='pip3'" >> ~/.bash_aliases

else
    touch .bash_aliases
    echo "alias python='python3'" >> ~/.bash_aliases
    echo "alias pip='pip3'" >> ~/.bash_aliases
fi