#!/bin/sh

#-----------------------------------------------------------------------------
# Create macOS Application Alise (different from symbol link)
# 创建一个苹果系统app的替身
#  $1 源地址 (source address)
#  $2 目标地址 (destination address)
#  $3 APP名字 (alise name)
#-----------------------------------------------------------------------------

SOUR="$1"
DEST="$2"
APP="$3"

source message

if [ -n "$SOUR" ] ;
    then
        if [ -n "$DEST" ] ;
            then
                #rm -rf "/Applications/""$APP"
                #sleep 3
                #info "tell application \"Finder\" to make alias file to POSIX file \"$SOUR\" at POSIX file \"$DEST\""
                osascript -e "tell application \"Finder\" to make alias file to POSIX file \"$SOUR\" at POSIX file \"$DEST\""
                success "$SOUR""\t-->\t""$DEST""\t-->\t""$APP"
            else
                fail "Destination Path is NULL - Use As creat_macOS_alise \"Source\" \"Destination\""
                exit
        fi
    else
        fail "Source Path is NULL - Use As creat_macOS_alise \"Source\" \"Destination\""
        exit
fi