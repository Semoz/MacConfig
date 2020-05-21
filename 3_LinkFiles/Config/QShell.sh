#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link qshell Config Files.."
DESTINATION_PATH=$HOME"/.qshell"
SOURCE_PATH=$HOME"/_AppConfig/Application/QShell/AppConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"