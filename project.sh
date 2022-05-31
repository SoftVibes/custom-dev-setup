#!/bin/bash

if [ -z $1 ]
then
    echo ""
    echo "Missing type parameter. Type [$0 help] for more info."
    echo ""

elif [ $1 == "help" ]
then
    echo ""
    echo "Help :-"
    echo ""
    echo ""
    echo "  Functionality :- Sets up a basic development project with boilerplate code."
    echo ""
    echo "  Syntax :- '$0 [type] [...dependencies]'"
    echo ""
    echo "  [options] can be either of the following :-"
    echo ""
    echo "     > [python] or [py] - For setting up a basic Python project."
    echo "     > [nodejs] or [node] or [js] - For setting up a basic NodeJS project."
    echo "     > [c++] or [cpp] - For setting up a basic C++ project."
    echo ""
    echo "  [...dependencies] :- Space seperated project dependencies."
    echo ""
    echo "     > Dependencies will be installed with Pip or NPM."
    echo "     > Only applicable for Python and NodeJS projects."
    echo ""

elif [ $1 == "python" ] || [ $1 == "py" ]
then
    echo ""
    echo "Creating empty Python project with boilerplate code ..."
    echo ""

    touch main.py
    echo "print(\"Hello World!\")" > main.py
    
    touch requirements.txt

    if [ -z $2 ]
    then
        set -e

    else
        echo "Installing dependencies ..."
        echo ""

        for var in $@
        do
            if [ $var != $1 ]
            then
                pip install $var
                echo $var >> requirements.txt
            fi
        done
    fi

    echo ""
    echo "Empty Python project created."
    echo ""

    code .

elif [ $1 == "nodejs" ] || [ $1 == "node" ] || [ $1 == "js" ]
then
    echo ""
    echo "Creating empty NodeJS project with boilerplate code ..."
    echo ""

    npm init

    touch index.js
    echo "console.log(\"Hello World!\");" > index.js

    if [ -z $2 ]
    then
        set -e
    
    else
        echo "Installing dependencies ..."
        echo ""

        for var in @a
        do
            if [ $var != $1 ]
            then
                npm install $var
            fi
        done
    fi

    echo ""
    echo "Empty NodeJS project created."
    echo ""

    code .

elif [ $1 == "c++" ] || [ $1 == "cpp" ]
then
    echo ""
    echo "Creating empty C++ project with boilerplate code ..."
    echo ""

    touch main.cpp
    echo "#include <iostream>" > main.cpp
    echo "using namespace std;" >> main.cpp
    echo "" >> main.cpp
    echo "int main(){" >> main.cpp
    echo "" >> main.cpp
    echo "" >> main.cpp
    echo "  return 0;" >> main.cpp
    echo "}" >> main.cpp

    echo "Empty C++ project created."
    echo ""

    code .

else
    echo ""
    echo "Invalid type parameter. Type [$0 help] for more info."
    echo ""
fi