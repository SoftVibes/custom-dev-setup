#!/bin/bash

sudo apt remove npm
sudo apt remove nodejs

cd ~
sudo rm -R /.npm/
sudo rm -R /.nvm/