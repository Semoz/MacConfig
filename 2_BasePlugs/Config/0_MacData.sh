#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link MacData To {HOME}/_MacData"
info ""
info "Current Directory is:\t"$ROOT_PATH
info ""

#链接MacData目录
DESTINATION_PATH=$HOME"/_MacData"
SOURCE_PATH=$ROOT_PATH
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"