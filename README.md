# Custom Dev Setup (using BASH)

This is a custom set of BASH scripts I wrote to quickly setup some basic development tools when moving to a new environment. However, this uses APT and Linux file structure which is why this won't work on Windows or distros that use Pamac :( This will install Python, NodeJS, GNU C++ & Visual Studio Code and also install some scripts that help setup projects easily.


## What each script does

* help.sh - Provides help for using the entire tool

* install.sh - Installs user-mentioned tools

* uninstall.sh - Uninstalls user-mentioned tools

* project.sh - Script for the custom project tool. This gets copied to /usr/bin/ upon installation

* run.sh - Script for the custom project tool. This too, gets copied to /usr/bin upon installation

* /install/*.sh - Scripts that are run upon installation, specific to each tool

* /uninstall/*.sh - Scripts that are run upon uninstallation, specific to each tool

## How to use

First clone the repository :-
```git clone https://github.com/SoftVibes/custom-dev-setup```

CD into the cloned repository :-
```cd /custom-dev-setup/```

Now, you can install or uninstall tools & even get help. The following are some example commands :-

For help :-
```./help.sh```

For installing everything :-
```./install.sh```

For uninstalling everything :-
```./uninstall.sh```

For installing specific tools :-
```./install.sh python node```

For uninstalling specific tools :-
```./uninstall.sh code node```