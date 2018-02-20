# Debian9-Settings

## Introduction(소개)
* 이것은 나의 데비안 9 설치 프로그램 및 설정 스크립트이다.
* 설정은 다음과 같다:
  * :minibus: 한글 폰트, 한글 입력기 설치
    * fonts-nanum, ibus, ibus-hangul
  * 🦊 firefox
    * firefox-esr -> firefox 
  * :octocat: git
    * `git config --global core.editor vim`
    * `git config --global user.email "jazz4rabbit@gmail.com"`
    * `git config --global user.name "jazz4rabbit"`
  * :pencil: vim (from source)
    * Vundle
      * NERDTree
      * solarized(colorscheme)
      * ycm(YouCompleteMe)
        * C-family.
        * :construction: golang (not yet)
        * :construction: javascript (not yet)
  * :whale: docker (using the repository)
    * you may need this `usermode -aG docker $USER`.
  * :art: Solarized Theme for GNOME terminal profile
    * terminal profile
    * GNU ls
      * Modify the lines in `$USER/.bashrc`.
      * https://github.com/seebi/dircolors-solarized
  * :art: Powerline
    * powerline-status 
      * Add command lines to `/etc/bash.bashrc`, `/etc/profile`.
      * Add command lines to `$USER/.bashrc`.
    * powerline-fonts

## Installation(설치)
```
# ./install.sh
$ ./settings.sh
```
