#!/bin/sh
sudo -v
# Finder 设置
#-------------------------------------------------------------------------------
# 显示所有文件的扩展名
# >设置方式
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# >解除方式
# defaults write NSGlobalDomain AppleShowAllExtensions -bool false
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 显示所有文件和文件夹
# >设置方式
defaults write com.apple.finder AppleShowAllFiles true
# >解除方式
# defaults write com.apple.finder AppleShowAllFiles false
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#设置Finder的默认开启路径
#defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
#defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
#-------------------------------------------------------------------------------

#在网络卷上不要自动创建 .DS_Store 这样的文件
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

#在USB设备上不要自动创建 .DS_Store 这样的文件
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finder 底下显示路径
defaults write com.apple.finder ShowPathbar -bool true
#默认搜索当前文件夹
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#重命名的时候 不提示后缀名更换
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

killall Finder