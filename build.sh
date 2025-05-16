#!/bin/sh

$(realpath $(which luasmith)) blog src docs
git add .
git commit -m Update
git push

