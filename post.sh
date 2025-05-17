#!/bin/sh

read title

path="src/$1.md"

echo "---" >> $path
echo "title: $title" >> $path
echo "date: $(date -I)" >> $path
echo "---" >> $path
vim $path

