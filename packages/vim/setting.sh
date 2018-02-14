# VIM Settings
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ~/.vimrc ~/.vimrc.bak 2>/dev/null

sed -n "/begin Vundle/,/end Vundle/p" vimrc.txt > ~/.vimrc
vim +PluginInstall +qall

cp vimrc.txt ~/.vimrc

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer --go-completer --js-completer
