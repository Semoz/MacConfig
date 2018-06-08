#!/bin/sh
#-------------------------------------------------------------------------------
# 触发角 Hot corners
#  0: 无 no-option
#  2: 调度中心 Mission Control
#  3: 应用程序窗口 Show application windows
#  4: 桌面 Desktop
#  5: 启动屏幕保护程序 Start screen saver
#  6: 停用屏幕保护程序 Disable screen saver
#  7: 仪表盘 Dashboard
# 10: 将显示器置于睡眠状态 Put display to sleep
# 11: 启动台 Launchpad
# 12: 通知中心 Notice Center
# 屏幕左上角触发 -> 启动屏幕保护程序 Top left screen corner -> Start screen saver
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0
# 屏幕右上角触发 -> 无 Top right screen corner -> no-option
# defaults write com.apple.dock wvous-tr-corner -int 0
# defaults write com.apple.dock wvous-tr-modifier -int 0
# 屏幕左下角触发 -> 无 Bottom left screen corner -> no-option
# defaults write com.apple.dock wvous-bl-corner -int 0
# defaults write com.apple.dock wvous-bl-modifier -int 0
# 屏幕右下角触发 -> 桌面 Bottom right screen corner -> Desktop
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0
#-------------------------------------------------------------------------------