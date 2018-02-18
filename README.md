# Debian9-Settings

## Introduction(소개)
- 이것은 나의 데비안 9 설치 프로그램 및 설정 스크립트이다.
- 설정은 다음과 같다:
  - 한글 폰트, 한글 입력기 설치
    - fonts-nanum, ibus, ibus-hangul
  - firefox
    - firefox-esr -> firefox 
  - git
    - `git config --global core.editor vim`
    - `git config --global user.email "jazz4rabbit@gmail.com"`
    - `git config --global user.name "jazz4rabbit"`

  - vim (from source)
    - Vundle
      - NERDTree
      - solarized8(colorscheme)
      - ycm(YouCompleteMe)
        - C-family
        - golang
        - javascript
  - docker (using the repository)

## Installation(설치)
```
# ./install.sh
$ ./settings.sh
```
