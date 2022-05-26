#!/bin/bash

sudo apt remove python3
sudo apt remove python3-pip

if [ -f ".bash_aliases" ]
then
    echo "alias python='python'" >> ~/.bash_aliases
    echo "alias pip='pip'" >> ~/.bash_aliases
fi