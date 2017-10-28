#!/bin/sh
# 访问管理员权限
sudo -v
defaults write NSGlobalDomain AppleInterfaceStyle Dark
#-------------------------------------------------------------------------------
# 修改dock栏最小化效果 genie 神奇效果 | scale 缩放 |suck 吸入
# > 设置方式
# defaults write com.apple.dock mineffect genie
# > 解除方式
# defaults write com.apple.dock mineffect genie
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 在「应用区」添加空白占位符
# > 设置方式
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# > 解除方式
# 右键点击「从 Dock 中移除」

# 在「堆栈区」添加空白占位符
# > 设置方式
# defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'
# > 解除方式
# 右键点击「从 Dock 中移除」
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#⌘ H隐藏应用的使用透明图标显示
# > 设置方式
defaults write com.apple.dock showhidden -bool true
# > 解除方式
# defaults delete com.apple.Dock showhidden
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 录屏时使用－让 Dock 只显示已打开应用，从而减少不必要的干扰
# > 设置方式
# defaults write com.apple.dock static-only -boolean true
# > 解除方式
# defaults delete com.apple.dock static-only
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# 启用堆栈鼠标移上去后图标高亮
# > 设置方式
defaults write com.apple.dock mouse-over-hilite-stack -bool TRUE
# > 解除方式
# defaults delete com.apple.dock mouse-over-hilite-stack
#-------------------------------------------------------------------------------

# 自动隐藏dock
defaults write com.apple.dock autohide -bool true


Killall Dock