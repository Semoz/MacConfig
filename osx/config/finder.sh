#!/bin/sh
#sudo -v
# Finder 设置

#-------------------------------------------------------------------------------
# 给Finder添加一个退出按钮
defaults write com.apple.finder QuitMenuItem -bool true
#-------------------------------------------------------------------------------
# 显示所有文件的扩展名
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
#-------------------------------------------------------------------------------
# 显示所有文件和文件夹
defaults write com.apple.finder AppleShowAllFiles true
#-------------------------------------------------------------------------------
# 搜索文件区域设置为当前文件夹
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
#-------------------------------------------------------------------------------
# 修改文件后缀名时不显示警告
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
#-------------------------------------------------------------------------------
# 显示状态栏
defaults write com.apple.finder ShowStatusBar -bool true
#-------------------------------------------------------------------------------
# Finder 底下显示路径
defaults write com.apple.finder ShowPathbar -bool true
#-------------------------------------------------------------------------------
#在网络卷上不要自动创建 .DS_Store 这样的文件
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
#在USB设备上不要自动创建 .DS_Store 这样的文件
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
#-------------------------------------------------------------------------------
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"




#-------------------------------------------------------------------------------
#设置Finder的默认开启路径
#defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
#defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
#-------------------------------------------------------------------------------


killall Finder













#-------------------------------------------------------------------------------
# 在Finder顶部显示完整路径
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true



#-------------------------------------------------------------------------------
