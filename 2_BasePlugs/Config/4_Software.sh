#!/bin/sh -e

cd "$(dirname "$0")/../../.."
ROOT_PATH=$(pwd -P)

source message

info ""
info "-------------------------------------------------------------------------"
info ""
info "Link Software To HOME.."
info ""
info "Current Directory:\t"$ROOT_PATH
info ""

#链接Software录
DESTINATION_PATH=$HOME"/_Software"
SOURCE_PATH=$ROOT_PATH"/4_Software"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"