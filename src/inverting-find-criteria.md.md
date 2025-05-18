---
title: Use "!" to invert criteria in the "find" command
date: 2025-05-18
---
Sometimes, when using the POSIX `find` command (e.g. `find . -name '*.c'`), **I want to filter out a few files**. This can be done using the `!` operator, which applies to critera that follow it.

Example I used recently:

```
find . -name '*.c' ! -path './lua/*'
```

This finds all `.c` files in the current directory tree, *excluding* those under the `lua/` directory. I piped the result into [entr](https://eradman.com/entrproject/) so that a program I was developing would automatically recompile and run when I modified any of its source files.

