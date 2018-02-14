# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

# install vim from source code
apt install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 liblua5.1-0-dev libperl-dev git

apt remove -y vim-common vim-tiny

cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80

make install

apt install -y exuberant-ctags

# pre-require of ycm
apt install -y build-essential cmake
apt install -y python-dev python3-dev

## install go
apt install -y golang-go

## install nodejs (https://nodejs.org/ko/download/package-manager/#debian-ubuntu-linux)
apt install -y curl
curl -sL https://deb.nodesource.com/setup_7.x | bash -
apt install -y nodejs
### + curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
### 
### + echo 'deb https://deb.nodesource.com/node_7.x stretch main' > /etc/apt/sources.list.d/nodesource.list
### + echo 'deb-src https://deb.nodesource.com/node_7.x stretch main' >> /etc/apt/sources.list.d/nodesource.list
