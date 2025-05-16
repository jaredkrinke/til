#!/bin/sh

read title

path="content/$1.md"

echo "---" >> $path
echo "title: $title" >> $path
echo "date: $(date -I)" >> $path
echo "---" >> $path
vim $path

