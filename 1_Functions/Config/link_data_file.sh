#!/bin/sh

#-----------------------------------------------------------------------------
# Create A Symbol Link To File(Force Delete Destination address)
# 给文件创建一个软链接(会强制删除目标地址，请注意备份)
#  $1 源地址 (source address)
#  $2 目标地址 (destination address)
#-----------------------------------------------------------------------------

SOUR="$1"
DEST="$2"

source message

if [ -n "$SOUR" ] ;
    then
        if [ -n "$DEST" ] ;
            then



                ln -s -f "$SOUR" "$DEST"
                success "$DEST""\t-->\t""$SOUR"
            else
                fail "Destination Path is NULL - Use As link_data_file \"Source\" \"Destination\""
                exit
        fi
    else
        fail "Source Path is NULL - Use As link_data_file \"Source\" \"Destination\""
        exit
fi