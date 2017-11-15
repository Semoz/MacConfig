#!/bin/sh
sudo -v
#-------------------------------------------------------------------------------
# 设置MacBook Pro 计算机名字 包括共享中的名字
sudo scutil --set ComputerName "Semoz-MBP"
sudo scutil --set HostName "Semoz-MBP"
sudo scutil --set LocalHostName "Semoz-MBP"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Semoz-MBP"
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 设置休眠等待时间为24小时
# sudo pmset -a standbydelay 86400
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 关闭开机"当"的一声
# > 设置方式
# sudo nvram SystemAudioVolume=" "
# > 解除方式
# sudo nvram -d SystemAudioVolume
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 设置默认的触发角
# Possible values:
#  0: － no-op
#  2: Mission Control
#  3: 应用程序窗口 Show application windows
#  4: 桌面 Desktop
#  5: 启动屏幕保护程序 Start screen saver
#  6: 停用屏幕保护程序 Disable screen saver
#  7: Dashboard
# 10: 将显示器置入睡眠状态 Put display to sleep
# 11: Launchpad
# 12: 通知中心 Notification Center
# 左上角 设置启动屏保
# defaults write com.apple.dock wvous-tl-corner -int 5
# defaults write com.apple.dock wvous-tl-modifier -int 0
# 右上角
# defaults write com.apple.dock wvous-tr-corner -int 2
# defaults write com.apple.dock wvous-tr-modifier -int 0
# 左下角
# defaults write com.apple.dock wvous-bl-corner -int 11
# defaults write com.apple.dock wvous-bl-modifier -int 0
# 右下角
# defaults write com.apple.dock wvous-br-corner -int 4
# defaults write com.apple.dock wvous-br-modifier -int 0
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 设置截屏保存位置
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
#恢复默认路径
#defaults write com.apple.screencapture location -string "${HOME}/Desktop"
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#关闭崩溃报告窗口在桌面的显示
#defaults write com.apple.CrashReporter DialogType none
#恢复成默认的对话框形式：
#defaults write com.apple.CrashReporter DialogType crashreport
#让崩溃报告在「通知中心」显示
defaults write com.apple.CrashReporter UseUNC 1
#恢复成默认的对话框形式：
#defaults write com.apple.CrashReporter UseUNC 0
#-------------------------------------------------------------------------------

# 加快应用程序resize的速度
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# 默认扩大保存窗口
#defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
#defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# 关闭“你确定要开启这个应用程序对话框”
# defaults write com.apple.LaunchServices LSQuarantine -bool false

killall SystemUIServer