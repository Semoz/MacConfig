#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Sublime Config Files.."
DESTINATION_PATH=$HOME"/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
SOURCE_PATH=$HOME"/_AppConfig/Application/Sublime Text 3/AppConfig/sublime.cfg"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"