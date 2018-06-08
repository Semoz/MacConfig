#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Evernote Config Files.."
DESTINATION_PATH=$HOME"/Library/Application Support/com.evernote.Evernote"
SOURCE_PATH=$HOME"/_AppData/Evernote/AppData"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"