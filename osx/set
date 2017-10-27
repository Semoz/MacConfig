#!/bin/sh
# 访问管理员权限
sudo -v
#####################################################
#系统相关                                            #
#####################################################
#----------------------------------------------------
#设置MacBook Pro 计算机名字 包括共享中的名字
sudo scutil --set ComputerName "Semoz-MBP"
sudo scutil --set HostName "Semoz-MBP"
sudo scutil --set LocalHostName "Semoz-MBP"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Semoz-MBP"
#----------------------------------------------------
#设置休眠等待时间为24小时
#sudo pmset -a standbydelay 86400
#----------------------------------------------------
#关闭开机"当"声音
sudo nvram SystemAudioVolume=" "
#恢复默认
#sudo nvram -d SystemAudioVolume
#----------------------------------------------------
# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
#----------------------------------------------------

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
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0
# 右上角
#defaults write com.apple.dock wvous-tr-corner -int 2
#defaults write com.apple.dock wvous-tr-modifier -int 0
# 左下角
#defaults write com.apple.dock wvous-bl-corner -int 11
#defaults write com.apple.dock wvous-bl-modifier -int 0
# 右下角
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0
#----------------------------------------------------
#设置截屏保存位置
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
#恢复默认路径
#defaults write com.apple.screencapture location -string "${HOME}/Desktop"
killall SystemUIServer
#----------------------------------------------------
#关闭崩溃报告窗口在桌面的显示
#defaults write com.apple.CrashReporter DialogType none
#恢复成默认的对话框形式：
#defaults write com.apple.CrashReporter DialogType crashreport
#让崩溃报告在「通知中心」显示
defaults write com.apple.CrashReporter UseUNC 1
#恢复成默认的对话框形式：
#defaults write com.apple.CrashReporter UseUNC 0
#----------------------------------------------------
#####################################################
#Dock                                               #
#####################################################
#----------------------------------------------------
#修改dock栏最小化效果 genie 神奇效果 | scale 缩放 |suck 吸入
defaults write com.apple.dock mineffect genie
#----------------------------------------------------
#增加空白占位符 －> 右键点击「从 Dock 中移除」即可。
#在「应用区」添加空白占位符：
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
#在「堆栈区」添加空白占位符：
defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'
#----------------------------------------------------
#⌘H隐藏应用的使用透明图标显示
defaults write com.apple.dock showhidden -bool true
#恢复为默认设置：
#defaults delete com.apple.Dock showhidden
#----------------------------------------------------
#录屏时使用－让 Dock 只显示已打开应用，从而减少不必要的干扰
#defaults write com.apple.dock static-only -boolean true
#恢复为默认设置：
#defaults delete com.apple.dock static-only
#----------------------------------------------------
#启用堆栈鼠标移上去后图标高亮：
defaults write com.apple.dock mouse-over-hilite-stack -bool TRUE
#恢复为默认效果：
#defaults delete com.apple.dock mouse-over-hilite-stack
#----------------------------------------------------

Killall Dock

