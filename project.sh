#!/bin/bash

if [ -z $1 ]
then
    echo "Didn't recieve type parameter. Type [$0 help] for details."

elif [ $1 == 'help' ] || [ $1 == '--help' ] || [ $1 == '/?' ]
then
    echo "Help :-"
    echo ""
    echo ""
    echo "  Functionality :- Sets up a basic development project with boilerplate code."
    echo ""
    echo "  Syntax :- '$0 [type] [dependencies]'"
    echo ""
    echo "  [options] can be either of the following :-"
    echo ""
    echo "     > [python] or [py] - For setting up a basic Python project."
    echo "     > [nodejs] or [node] or [js] - For setting up a basic NodeJS project."
    echo "     > [c++] or [cpp] - For setting up a basic C++ project."
    echo ""
    echo "  [dependencies] :- Space seperated project dependencies."
    echo ""
    echo "     > Dependencies will be installed with Pip or NPM."
    echo "     > Only applicable for Python and NodeJS projects."
    echo ""

elif [ $1 == "python" ] || [ $1 == "py" ]
then
    echo "Creating empty Python project with boilerplate code ..."
    echo ""

    touch main.py
    echo "print(\"Hello world!\")" > main.py

    touch run.sh
    echo "#!/bin/bash" > run.sh
    echo "" >> run.sh
    echo "python3 main.py" >> run.sh

    if [ -z $2 ]
    then
        set -e

    else
        echo "Installing dependencies ..."
        echo ""

        for var in $@
        do
            if [ $1 != $var ]
            then
                pip install $var
            fi
        done

        echo ""
        echo "Provided dependencies installed."
        echo ""
    fi

    echo "Empty Python project created."
    echo ""

    code .

elif [ $1 == "nodejs" ] || [ $1 == "node" ] || [ $1 == "js" ]
then
    echo "Creating empty NodeJS project with boilerplate code ..."
    echo ""

    touch index.js
    echo "console.log('Hello world!');" > index.js
    
    touch run.sh
    echo "#!/bin/bash" > run.sh
    echo "" >> run.sh
    echo "node index.js" >> run.sh

    npm init

    if [ -z $2 ]
    then
        set -e
    
    else
        echo "Installing dependencies ..."
        echo ""

        for var in $@
        do
            if [ $1 != $var ]
            then
                npm install --save $var
            fi
        done

        echo ""
        echo "Provided dependencies installed."
        echo ""
    fi

    echo "Empty NodeJS project created."
    echo ""

    code .

elif [ $1 == "c++" ] || [ $1 == "cpp" ]
then
    echo "Creating empty C++ project with boilerplate code ..."
    echo ""
    
    touch main.cpp
    echo "#include <iostream>" > main.cpp
    echo "using namespace std;" >> main.cpp
    echo "" >> main.cpp
    echo "int main(){" >> main.cpp
    echo "   cout<<\"Hello world!\"<<endl;" >> main.cpp
    echo "   " >> main.cpp
    echo "   return 0;" >> main.cpp
    echo "}" >> main.cpp

    touch run.sh
    echo "#!/bin/bash" > run.sh
    echo "" >> run.sh
    echo "g++ main.cpp -o main" >> run.sh
    echo "./main" >> run.sh
    echo "rm main" >> run.sh

    echo "Empty C++ project created."
    echo ""

    code .

else
    echo "Invalid parameter [$1]. Type [$0 help] for details."
fi