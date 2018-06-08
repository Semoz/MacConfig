#!/bin/sh
# 访问管理员权限
# sudo -v
#-------------------------------------------------------------------------------
# 启用dock栏图标放大
defaults write com.apple.dock magnification -bool true
#-------------------------------------------------------------------------------
# 修改dock栏图标放大倍数(最大128)
defaults write com.apple.dock largesize -float 96
#-------------------------------------------------------------------------------
# 把dock栏放到左侧
defaults write com.apple.dock orientation left
#-------------------------------------------------------------------------------
# 自动隐藏dock
defaults write com.apple.dock autohide -bool true
#-------------------------------------------------------------------------------
# ⌘ H 隐藏应用的使用透明图标显示
# > 设置方式
defaults write com.apple.dock showhidden -bool true
# > 解除方式
# defaults delete com.apple.Dock showhidden
#-------------------------------------------------------------------------------
# 启用堆栈鼠标移上去后图标高亮，图标上显示方块底纹
# > 设置方式
defaults write com.apple.dock mouse-over-hilite-stack -bool TRUE
# > 解除方式
# defaults delete com.apple.dock mouse-over-hilite-stack
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------




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

#--------------------------------------------------------------------------
# 录屏时使用－让 Dock 只显示已打开应用，从而减少不必要的干扰
# > 设置方式
# defaults write com.apple.dock static-only -boolean true
# > 解除方式
# defaults delete com.apple.dock static-only
#-------------------------------------------------------------------------------

#----
#其他没必要的配置
#-------------------------------------------------------------------------------
# 给dock设置成单程序模式，在dock上点击任何程序后其他程序全部隐藏
# >设置方式
#defaults write com.apple.dock single-app -bool true
# >解除方式
# defaults write com.apple.dock single-app -bool no
#-------------------------------------------------------------------------------