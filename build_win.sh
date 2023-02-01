#!/bin/bash

# Copyright (c) 2022 Alex313031.

YEL='\033[1;33m' # Yellow
CYA='\033[1;96m' # Cyan
RED='\033[1;31m' # Red
GRE='\033[1;32m' # Green
c0='\033[0m' # Reset Text
bold='\033[1m' # Bold Text
underline='\033[4m' # Underline Text

# Error handling
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "${RED}Failed $*"; }

# Build Thorium and mini_installer
export NINJA_SUMMARIZE_BUILD=1 &&

./src/third_party/depot_tools/autoninja -C ~/chromium/src/out/test chrome chromedriver clear_key_cdm setup mini_installer -j$@ &&

tput sgr0 &&

exit 0
