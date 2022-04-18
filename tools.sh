#!/bin/bash

if [ -z $1 ]
then
    echo "Missing operation parameter. Type $0 help for details."

elif [ $1 == "help" ]
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

    sudo cp './project.sh' '/usr/local/bin/project.sh'
    echo "#!/bin/bash" > project.sh
    echo ""

    if [ -f ".bash_aliases" ]
    then
        echo "alias python=\"python3\"" >> .bash_aliases
        echo "alias pip3=\"pip3\"" >> .bash_aliases
    else
        touch .bash_aliases
        echo "alias python=\"python3\"" >> .bash_aliases
        echo "alias pip3=\"pip3\"" >> .bash_aliases
    fi

else
    echo "Invalid parameter [$1]."
fi