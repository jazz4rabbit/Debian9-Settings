#!/bin/bash

# install korea fonts
apt-get install -y fonts-noto fonts-nanum
apt-get install -y ibus ibus-hangul

# install firefox
./packages/firefox/install.sh

# install git
apt-get install -y git

# install vim from source code
./packages/vim/install.sh

# install docker
./packages/docker/install.sh

# install powerline
./packages/powerline/install.sh
