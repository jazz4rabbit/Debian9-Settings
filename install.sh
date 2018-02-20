#!/bin/bash

# install korea fonts
apt install -y fonts-nanum
apt install -y ibus ibus-hangul

# install firefox
./packages/firefox/install.sh

# install git
apt install git

# install vim from source code
./packages/vim/install.sh

# install docker
./packages/docker/install.sh

# install powerline
./packages/powerline/install.sh
