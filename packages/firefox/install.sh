#!/bin/bash

# Set current working directory to the directory of script.
cd "$(dirname "$0")"

# remove firefox-esr chromium (쓰지 않는 브라우저 지우기)
apt purge -y firefox-esr chromium

# install firefox (파이어폭스 설치)
wget -O firefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
mkdir /opt
tar xjvf firefoxSetup.tar.bz2 -C /opt

cp firefox.desktop /usr/share/applications/firefox.desktop
ln -s /opt/firefox/browser/icons/mozicon128.png /usr/share/pixmaps/firefox.png

rm -rf firefoxSetup.tar.bz2


# 완전히 지울 경우
#rm -rf /opt/firefox 
#rm -rf /usr/share/pixmaps/firefox.png
