#!/bin/sh
#用Finder制作替身，复制到目标路径目标地址，强制建立目标路径，强制删除目标软链
SOUR="$1"
DEST="$2"
APP="$3"

source message

if [ -n "$SOUR" ] ;
    then
        if [ -n "$DEST" ] ;
            then
                rm -rf "/Applications/""$APP"
                sleep 5
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