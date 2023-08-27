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

info "> Link SynologyDrive File..."
rm -rf $HOME"/SynologyDrive"
DESTINATION=$HOME"/SynologyDrive"
SOURCE=$Archive"/CloudDrive/SynologyDrive"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link Dropbox File..."
rm -rf $HOME"/Dropbox"
DESTINATION=$HOME"/Dropbox"
SOURCE=$Archive"/CloudDrive/Dropbox"
ln -sf "$SOURCE" "$DESTINATION"