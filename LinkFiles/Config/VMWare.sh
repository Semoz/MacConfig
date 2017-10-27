#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

DESTINATION_PATH=$HOME"/Documents/ShareData"
mkdir -p $DESTINATION_PATH

DESTINATION_PATH=$HOME"/Documents/ShareData/Development"
SOURCE_PATH=$ROOT_PATH"/Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"


DESTINATION_PATH=$HOME"/Documents/ShareData/Downloads"
SOURCE_PATH=$HOME"/Downloads"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"


DESTINATION_PATH=$HOME"/Documents/ShareData/QQ"
SOURCE_PATH=$ROOT_PATH"/UserData/QQUser"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"


DESTINATION_PATH=$HOME"/Documents/ShareData/Repository"
SOURCE_PATH=$ROOT_PATH"/Development/Environment/Maven/Repository"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"


DESTINATION_PATH=$HOME"/Documents/ShareData/Windows"
SOURCE_PATH=$ROOT_PATH"/FileData/Virtual Machine/Software/Windows"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"


DESTINATION_PATH=$HOME"/Documents/Virtual Machines.localized"
SOURCE_PATH=$ROOT_PATH"/FileData/Virtual Machine/Vmware"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"