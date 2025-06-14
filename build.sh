#!/bin/sh

luasmith blog src docs
luasmith readme.lua
git status

