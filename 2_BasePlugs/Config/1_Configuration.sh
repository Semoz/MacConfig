#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link _MacConfig To HOME.."
info ""
info "Current Directory:\t"$ROOT_PATH
info ""

#链接MacConfig目录
DESTINATION_PATH=$HOME"/_MacConfig"
SOURCE_PATH=$ROOT_PATH"/1_Configuration"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"