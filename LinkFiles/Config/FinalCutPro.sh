#!/bin/sh
set -e
cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)
source message

info "> Link FCP Effects.."
DESTINATION_PATH=$HOME"/Movies/Motion Templates.localized/Effects"
SOURCE_PATH=$ROOT_PATH"/FileData/FinalCutPro/Effects"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"