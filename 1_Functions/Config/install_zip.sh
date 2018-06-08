#!/bin/sh -e

#-----------------------------------------------------------------------------
# Install Zip Application
# 安装Zip类型的app，大部分来自于github
#  $1 zip文件路径 (zip file path)
#  $2 解压文件夹 (unzip folder name)
#-----------------------------------------------------------------------------

unzip -o "$1" -d "$2" -x __MACOSX/*
mv -f "$2"/*.app /Applications
rmdir "$2"