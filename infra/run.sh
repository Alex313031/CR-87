#!/bin/bash

# Copyright (c) 2023 Alex313031 and Midzer.

./chrome --user-data-dir=${PWD}/user_data --ppapi-flash-path=${PWD}/PepperFlash/_platform_specific/linux_x64/libpepflashplayer.so --ppapi-flash-version=34.0.0.137 --no-sandbox
