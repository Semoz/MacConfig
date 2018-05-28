#!/bin/sh
#软链接目标地址，强制建立目标路径，强制删除目标软链
SOUR="$1"
DEST="$2"

source message

if [ -n "$SOUR" ] ;
    then
        if [ -n "$DEST" ] ;
            then
                rm -rf "$DEST"
                mkdir -p "$DEST"
                rm -rf "$DEST"
                ln -s -f "$SOUR" "$DEST"
                success "$DEST""\t-->\t""$SOUR"
            else
                fail "Destination Path is NULL - Use As link_data_path \"Source\" \"Destination\""
                exit
        fi
    else
        fail "Source Path is NULL - Use As link_data_path \"Source\" \"Destination\""
        exit
fi