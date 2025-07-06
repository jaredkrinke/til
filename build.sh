#!/bin/sh

rm -rf docs
luasmith blog src docs
luasmith readme.lua
git status

