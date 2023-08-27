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

info "> Link Wallpaper Pictures File..."
rm -rf $HOME"/Pictures/Wallpaper"
DESTINATION=$HOME"/Pictures/Wallpaper"
SOURCE=$Archive"/Picture/Wallpaper"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link Screenshots Pictures File..."
rm -rf $HOME"/Pictures/Screenshots"
DESTINATION=$HOME"/Pictures/Screenshots"
SOURCE=$Archive"/Picture/Screenshots"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link Others Pictures File..."
rm -rf $HOME"/Pictures/Others"
DESTINATION=$HOME"/Pictures/Others"
SOURCE=$Archive"/Picture/Others"
ln -sf "$SOURCE" "$DESTINATION"