#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link 2_Development To {HOME}/_Development"
info ""
info "Current Directory is:\t"$ROOT_PATH
info ""

#链接Development目录
DESTINATION_PATH=$HOME"/_Development"
SOURCE_PATH=$ROOT_PATH"/2_Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"