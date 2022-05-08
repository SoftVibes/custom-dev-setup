#!/bin/bash

if [ -z $1 ]
then
    echo "Missing operation parameter. Type [$0 help] for details."

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

    cp './project.sh' '/usr/local/bin/project'

elif [ $1 == "uninstall" ]
then
    cd /usr/local/bin/
    rm project
    
else
    echo "Invalid parameter [$1]. Type [$0 help] for details."
fi