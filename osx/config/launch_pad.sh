#!/bin/sh
#sudo -v
#-------------------------------------------------------------------------------
# 修改LaunchPad图标数量
# 横轴
defaults write com.apple.dock springboard-rows -int 7
# 纵轴
defaults write com.apple.dock springboard-columns -int 11
# 生效
defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock