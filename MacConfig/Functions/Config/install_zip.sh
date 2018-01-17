#!/bin/sh
set -e
unzip -o "$1" -d "$2" -x __MACOSX/*
mv -f "$2"/*.app /Applications
rmdir "$2"