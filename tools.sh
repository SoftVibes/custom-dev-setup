#!/bin/bash

if [ -z $1 ]
then
    echo "Missing operation parameter. Type [$0 help] for details."

elif [ $1 == "install" ]
then
    echo "Installing python ..."
    echo ""
    echo "sudo apt install python3"
    sudo apt install python3
    echo ""
    echo "sudo apt install python3-pip"
    sudo apt install python3-pip
    cd /home/$USER/
    if [ -f ".bash_aliases" ]
    then
        echo "alias python=\"python3\"" >> .bash_aliases
        echo "alias pip=\"pip3\"" >> .bash_aliases

    else
        touch .bash_aliases
        echo "alias python=\"python3\"" >> .bash_aliases
        echo "alias pip=\"pip3\"" >> .bash_aliases
    fi
    echo ""
    echo ""

    echo "Installing NodeJS ..."
    echo ""
    echo "sudo apt install nodejs"
    sudo apt install nodejs
    echo "sudo apt install npm"
    sudo apt install npm
    echo ""
    echo ""

    echo "Installing GNU C++ ..."
    echo ""
    echo "sudo apt install build-essential"
    sudo apt install build-essential
    echo ""
    echo ""

    echo "Installing Visual Studio Code ..."
    echo ""
    echo "sudo apt install code"
    sudo apt install code
    echo ""
    echo ""

    echo "Installed Python, NodeJS, NPM, GNU C++ & Visual Studio Code."

elif [ $1 == "uninstall" ]
then
    echo "Uninstalling python ..."
    echo ""
    echo "sudo apt remove python3"
    sudo apt remove python3
    echo ""
    echo "sudo apt remove python3-pip"
    sudo apt remove python3-pip
    cd /home/$USER/
    if [ -f ".bash_aliases" ]
    then
        echo "alias python=\"python\"" >> .bash_aliases
        echo "alias pip=\"pip\"" >> .bash_aliases
    fi
    echo ""
    echo ""

    echo "Uninstalling NodeJS ..."
    echo ""
    echo "sudo apt remove nodejs"
    sudo apt remove nodejs
    echo "sudo apt remove npm"
    sudo apt remove npm
    echo ""
    echo ""

    echo "Uninstalling GNU C++ ..."
    echo ""
    echo "sudo apt remove build-essential"
    sudo apt remove build-essential
    echo ""
    echo ""

    echo "Uninstalling Visual Studio Code ..."
    echo ""
    echo "sudo apt remove code"
    sudo apt remove code
    echo ""
    echo ""