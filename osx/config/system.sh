#!/bin/sh
#sudo -v
#-------------------------------------------------------------------------------
# 设置MacBook Pro 计算机名字 包括共享中的名字
sudo scutil --set ComputerName "Semoz-MBP"
sudo scutil --set HostName "Semoz-MBP"
sudo scutil --set LocalHostName "Semoz-MBP"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Semoz-MBP"
#-------------------------------------------------------------------------------
# 使用暗色菜单栏和doc
#defaults write NSGlobalDomain AppleInterfaceStyle Dark
#-------------------------------------------------------------------------------
# 设置截屏保存位置
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
#恢复默认路径
#defaults write com.apple.screencapture location -string "${HOME}/Desktop"
#-------------------------------------------------------------------------------
# 加快应用程序窗口缩放resize的速度
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
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
# 设置任务栏图标、保留蓝牙、音量、WiFi、电池、时间、输入法
# 蓝牙 		/System/Library/CoreServices/Menu Extras/Bluetooth.menu"
# 音量 		/System/Library/CoreServices/Menu Extras/Volume.menu"
# WiFi 		/System/Library/CoreServices/Menu Extras/AirPort.menu"
# 电量 		/System/Library/CoreServices/Menu Extras/Battery.menu"
# 时间 		/System/Library/CoreServices/Menu Extras/Clock.menu"
# 输入法 	/System/Library/CoreServices/Menu Extras/TextInput.menu"
#defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Volume.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu" "/System/Library/CoreServices/Menu Extras/TextInput.menu"
#-------------------------------------------------------------------------------
# 设置某些文件保存默认位置选择本地磁盘而不选择iCloud
#defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
#-------------------------------------------------------------------------------
# 让系统一天检查一次软件更新
#defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
#-------------------------------------------------------------------------------
# 提高蓝牙耳机的音质
#defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 35
#defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" 53
#defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 35
#-------------------------------------------------------------------------------
# 终端用鼠标切换不需要点击，滑动即选中
#defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true
#-------------------------------------------------------------------------------
# 每次插入新硬盘时，阻止time machine弹出提示
#defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
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









# 默认扩大保存窗口
#defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
#defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true




#----------------------
#其他脚本
# 禁用非活动应用程序自动终止
# defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
# 关闭“你确定要开启这个应用程序对话框”
# defaults write com.apple.LaunchServices LSQuarantine -bool false
# 滚动条显示设置为 始终
# defaults write NSGlobalDomain AppleShowScrollBars -string “Always”
# 去掉菜单栏透明
# defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
# 打开或关闭窗口时 关闭动画效果
# defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
# 快速查看界面关闭动画效果
# defaults write -g QLPanelAnimationDuration -float 0
# 关闭Finder中显示简介的动画效果
# defaults write com.apple.finder DisableAllAnimations -bool true
# 关闭应用程序从dock打开的效果动画
# defaults write com.apple.dock launchanim -bool false
# 加速三指上滑的效果动画
# efaults write com.apple.dock expose-animation-duration -float 0.1
# 去掉隐藏dock时候的动画
# defaults write com.apple.Dock autohide-delay -float 0
# 去掉发送和回复邮件时候的效果动画
# defaults write com.apple.mail DisableReplyAnimations -bool true
# defaults write com.apple.mail DisableSendAnimations -bool true
# 复制email地址时候直接复制有效email地址
# defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
