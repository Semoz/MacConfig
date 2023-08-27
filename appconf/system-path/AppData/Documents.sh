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

MacData="/Volumes/MacDrive/MacData/"

info "> Link Volumes File..."
rm -rf $HOME"/Documents/Volumes"
DESTINATION=$HOME"/Documents/Volumes"
SOURCE="/Volumes"
ln -sf "$SOURCE" "$DESTINATION"

info "> Create VMWare Share Files..."
DESTINATION=$HOME"/Documents/ShareData"
mkdir -p $DESTINATION

info "> Link VMWare Share Development Files..."
rm -rf $HOME"/Documents/ShareData/Project"
DESTINATION=$HOME"/Documents/ShareData/Project"
SOURCE=$MacData"/Developer/Project"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link VMWare Share Downloads Files..."
rm -rf $HOME"/Documents/ShareData/Downloads"
DESTINATION=$HOME"/Documents/ShareData/Downloads"
SOURCE=$HOME"/Downloads"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link VMWare Share QQ User Chat Log Files..."
rm -rf $HOME"/Documents/ShareData/QQ"
DESTINATION=$HOME"/Documents/ShareData/QQ"
SOURCE=$MacData"/Archive/AppData/QQ/AppData/QQUser"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link VMWare Share Repository Files..."
rm -rf $HOME"/Documents/ShareData/MavenRepo"
DESTINATION=$HOME"/Documents/ShareData/MavenRepo"
SOURCE=$MacData"/Developer/Environment/Maven/Repository"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link VMWare Share Windows Software Files..."
rm -rf $HOME"/Documents/ShareData/Software"
DESTINATION=$HOME"/Documents/ShareData/Software"
SOURCE=$MacData"/Archive/Virtualization/VirtualMachine/Software"
ln -sf "$SOURCE" "$DESTINATION"

info "> Link VMWare Create Path Files..."
rm -rf $HOME"/Documents/ShareData/Software"
DESTINATION=$HOME"/Documents/ShareData/Software"
SOURCE=$MacData"/Archive/Virtualization/VirtualMachine/Software"
ln -sf "$SOURCE" "$DESTINATION"