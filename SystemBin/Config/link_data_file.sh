#!/bin/sh
SOUR="$1"
DEST="$2"
source message
if [ -n "$SOUR" ] ;
    then
        if [ -n "$DEST" ] ;
            then



                ln -s -f "$SOUR" "$DEST"
                success "$DEST""\t---->\t""$SOUR"
            else
                fail "Destination Path is NULL - Use As link_data_file \"Source\" \"Destination\""
                exit
        fi
    else
        fail "Source Path is NULL - Use As link_data_file \"Source\" \"Destination\""
        exit
fi