#!/bin/sh
#set -e
mount_dmg "$1"
cp -rf /Volumes/"$2"/*.app /Applications
echo "> 安装"$2"成功"
hdiutil detach /Volumes/"$2"
#sudo installer -pkg DarwinPorts-1.2.pkg -target "/Application"