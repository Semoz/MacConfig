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

Archive="/Volumes/MacDrive/MacData/Archive"

info "> Link Baidu Downloads File..."
rm -rf $HOME"/Downloads/Baidu"
DESTINATION=$HOME"/Downloads/Baidu"
SOURCE=$Archive"/Downloads/Baidu"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link Browser Downloads File..."
rm -rf $HOME"/Downloads/Browser"
DESTINATION=$HOME"/Downloads/Browser"
SOURCE=$Archive"/Downloads/Browser"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link Thunder Downloads File..."
rm -rf $HOME"/Downloads/Thunder"
DESTINATION=$HOME"/Downloads/Thunder"
SOURCE=$Archive"/Downloads/Thunder"
ln -sf "$SOURCE" "$DESTINATION"