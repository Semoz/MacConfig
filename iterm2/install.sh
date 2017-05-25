#!/usr/bin/env bash

# Run all dotfiles installers.

set -e

cd "$(dirname "$0")/.." # 定位到执行当前脚本的目录上级

sudo ln -s -f ~/DotFiles/iterm2/item2login.sh /usr/local/bin/item2login.sh # 软链接文件


#sudo ln -s -f ~/DotFiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
