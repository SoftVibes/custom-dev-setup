#!/bin/bash

sudo cd /install

if [ -z $1 ]
then
    ./python.sh
    ./node.sh
    ./cpp.sh
    ./project.sh install

else
    for var in $@
    do
        if [ $var == "python" ]
        then
            ./python.sh

        elif [ $var == "node" ]
        then
            ./node.sh

        elif [ $var == "cpp" ] || [ $var == "c++" ]
        then
            ./cpp.sh

        elif [ $var == "project" ]
        then
            ./project.sh
        
        elif [ $var == "code" ]
        then
            ./code.sh
        
        else
            echo ""
            echo "Invalid argument [$var]"
            echo ""
        fi
    done
fi