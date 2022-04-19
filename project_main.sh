#!/bin/bash

if [ -z $1 ]
then
    echo "Missing operation parameter. Type $0 help for details."

elif [ $1 == "help" ] || [ $1 == "--help" ] || [ $1 == "/?" ]
then
    echo "Help :-"
    echo ""
    echo ""
    echo "  Functionality :- Creates scripts that help with creating & managing projects."
    echo ""
    echo "  Syntax :- '$0 [options]'"
    echo ""
    echo "  [options] can be either of the following :-"
    echo ""
    echo "     > help - For viewing help (this list)."
    echo "     > install - For installing all the project-handling scripts."
    echo "     > uninstall - For uninstalling all the prject-handling scripts."
    echo ""

elif [ $1 == "install" ]
then

    cp './project.sh' '/usr/local/bin/project.sh'

    cd /home/$USER/
    if [ -f "bash_aliases" ]
    then
        echo "alias project=\"project.sh\"" >> .bash_aliases
        echo "alias run=\"./run.sh\"" >> .bash_aliases

    else
        touch .bash_aliases
        echo "alias project=\"project.sh\"" >> .bash_aliases
        echo "alias run=\"./run\"" >> .bash_aliases
    fi

elif [ $1 == "uninstall" ]
then
    cd /usr/local/bin/
    rm project.sh

    cd /home/$USER
    echo "alias project=\"project\"" >> .bash_aliases
    echo "alias run=\"run\"" >> .bash_aliases

else
    echo "Invalid parameter [$1]."
fi