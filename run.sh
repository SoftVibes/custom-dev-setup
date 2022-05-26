if [ -f "package.json" ]
then
    echo ""
    echo "NodeJS project detected. Trying to run project with preset commands"
    echo ""

    {
        node index.js
    } || {
        node main.js
    } || {
        node app.js
    } || {
        npm start
    } || {
        npm run dev
    }

elif [ -f "requirements.txt" ]
then
    echo ""
    echo "Python project detected. Trying to run project."
    echo ""

    {
        python main.py
    } || {
        python3 main.py
    }

elif [ -f "main.cpp" ]
then
    echo ""
    echo "C++ project detected. Trying to run project."
    echo ""

    {
        g++ main.cpp -o main
        ./main
        rm main
    }

else
    echo ""
    echo "No specific project files detected."
    echo ""
fi