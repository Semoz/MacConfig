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

info "> Link Other Music File..."
rm -rf $HOME"/Music/其他音乐"
DESTINATION=$HOME"/Music/其他音乐"
SOURCE=$Archive"/Music/Other"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link QQMUsic Music File..."
rm -rf $HOME"/Music/QQ音乐"
DESTINATION=$HOME"/Music/QQ音乐"
SOURCE=$Archive"/Music/QQMusic"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link Logic Music File..."
rm -rf $HOME"/Music/Logic"
DESTINATION=$HOME"/Music/Logic"
SOURCE=$Archive"/Music/Logic"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link NeteaseMusic Music File..."
rm -rf $HOME"/Music/网易云音乐"
DESTINATION=$HOME"/Music/网易云音乐"
SOURCE=$Archive"/Music/NeteaseMusic"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link SoundEffect Music File..."
rm -rf $HOME"/Music/音效配乐"
DESTINATION=$HOME"/Music/音效配乐"
SOURCE=$Archive"/SoundEffect"
ln -sf "$SOURCE" "$DESTINATION"