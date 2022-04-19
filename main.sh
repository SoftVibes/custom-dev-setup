#!/bin/bash

if [ -z $1 ]
then
    echo "Missing operation parameter. Type [$0 help] for details."

elif [ $1 == "help" ]
then
    echo "Help :-"
    echo ""
    echo ""
    echo "  Functionality :- Sets up basic development tools and scripts."
    echo ""
    echo "  Syntax :- '$0 [operation] [tools]'"
    echo ""
    echo "  [operation] can be either of the following :-"
    echo ""
    echo "     > install - Install the tools specified in [tools]."
    echo "     > uninstall - Uninstall the tools specified in [tools]."
    echo ""
    echo "  [tools] :- Space seperated tools to be installed or uninstalled."
    echo "  [tools] can be any of the following :-"
    echo ""
    echo "     > basic - Includes Python, NodeJS, GNU C++ (G++) & Visual Studio Code"
    echo "     > project-script - Sets up a script to help quickly create projects."
    echo ""

elif [ $1 == "install" ]
then
    if [ -z $2 ]
    then
        echo "Missing tools parameter(s). Type [$0 help] for details."
    else
        for var in $@
        do
            if [ $var == "basic" ]
            then
                ./tools.sh install
            
            elif [ $var == "project-script" ]
            then
                ./project_setup.sh install
            
            elif [ $var == $1 ]
            then
                echo ""
            
            else
                echo "invalid tool parameter [$var]."
            fi
    fi

elif [ $1 == "uninstall" ]
then
    if [ -z $2 ]
    then
        echo "Missing tools parameter(s). Type [$0 help] for details."
    else
        for var in $@
        do
            if [ $var == "basic" ]
            then
                ./tools.sh uninstall
            
            elif [ $var == "project-script" ]
            then
                ./project_setup.sh uninstall
            
            elif [ $var == $1 ]
            then
                echo ""
            
            else
                echo "invalid tool parameter [$var]."
            fi
    fi

else
    echo "Invalid parameter [$1]. Type [$0 help] for details."