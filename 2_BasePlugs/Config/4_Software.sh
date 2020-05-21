#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link 4_Software To {HOME}/_Software"
info ""
info "Current Directory is:\t"$ROOT_PATH
info ""

#链接Software录
DESTINATION_PATH=$HOME"/_Software"
SOURCE_PATH=$ROOT_PATH"/4_Software"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"