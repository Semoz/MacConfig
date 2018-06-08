#!/bin/sh

#-----------------------------------------------------------------------------
# Install DMG Application
# 安装dmg程序
#  $1 dmg路径 (.dmg file path)
#  $2 挂载后的磁盘名字 (.dmg volume name)
#-----------------------------------------------------------------------------

mount_dmg "$1"
cp -rf /Volumes/"$2"/*.app /Applications
echo "> Install "$2" Success"
hdiutil detach /Volumes/"$2"
#sudo installer -pkg DarwinPorts-1.2.pkg -target "/Application"