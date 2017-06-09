#!/usr/bin/env bash

# Run all dotfiles installers.

set -e

cd "$(dirname "$0")/.." # 定位到执行当前脚本的目录上级

sudo ln -s -f ~/DotFiles/iterm2/item2login.sh /usr/local/bin/item2login.sh # 软链接文件

# 硬链文件 需要安装好drowbox同步后再执行
# sudo ln -f ~/Dropbox/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
