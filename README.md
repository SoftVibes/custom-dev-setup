# Custom Dev Setup (using BASH)

This is a custom set of BASH scripts I wrote to quickly setup some basic development tools when moving to a new environment. However, this uses APT which is why this won't work on Windows :( This will install Python, NodeJS, GNU C++ & Visual Studio Code and also install some scripts that help setup projects easily.


## What each script does

* main.sh - Helps install or uninstall multiple of the other scripts at once.

* project_setup.sh - Installs the project and run scripts. These help quickly create code projects with some boilerplate code.

* project.sh - Contains one of the scripts installed through project_setup.sh

* tools.sh - Installs Python, NodeJS, GNU C++ as well as Visual Studio Code.


## How to use

You can download either of the scripts and use them individually.

* The main.sh script needs all of the other scripts to be present in order to be run.

* The project_setup.sh needs the project.sh script to be present in order to be run & similarly, the project.sh script can't be installed without the project_setup.sh script.

* The tools.sh script can be run without any of the other scripts.

All of the scripts also include help functionality to provide details on what to use them for how to use them.