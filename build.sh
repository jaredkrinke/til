#!/bin/sh

$(realpath $(which luasmith)) blog src docs
$(realpath $(which luasmith)) readme.lua

