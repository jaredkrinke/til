---
title: Use "VPATH" and ".PATH" for compiling subdirectory source files in Make
date: 2025-06-11
---
GNU Make (`gmake` on BSDs) and BSD Make (`bmake` on Linux) handle source files in subdirectories differently:

* GNU Make places compiled object files next to the source files, in their subdirectory
* BSD Make places compiled object files in the Makefile's directory

This inconsistency is a problem for my current project that uses a polyglot Makefile that works on with both Makes.

I'm trying to explore this space as little as possible, but my current solution is to use `VPATH` for GNU Make and `.PATH` for BSD Make -- these both support searching for source files in subdirectories (while placing object files in the root--i.e. the same directory as the Makefile). This is handy for e.g. when you're pulling in code via Git submodules, but you're compiling a single binary.

Example:

```makefile
# Support both GNU Make and BSD Make

VPATH = .:lua:lpeg:md4c/src:chtml
.PATH = ./ lua/ lpeg/ md4c/src/ chtml/
```

