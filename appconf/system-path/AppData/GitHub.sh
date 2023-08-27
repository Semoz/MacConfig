#!/bin/sh -e
#sudo -v #请求管理员权限
cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}
success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}
fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
}

MacData="/Volumes/MacDrive/MacData"

info "> Link GitHub File..."
rm -rf $HOME"/Documents/GitHub"
DESTINATION=$HOME"/Documents/GitHub"
SOURCE=$HOME"/SynologyDrive/_Project/Github"
ln -sf "$SOURCE" "$DESTINATION"