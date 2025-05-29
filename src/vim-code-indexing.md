---
title: Use "exuberant-ctags" for "go to definition" in Vim
date: 2025-05-28
---
I re-learned today that **you can get "jump to definition" in Vim using `exuberant-ctags`**:

* Install `exuberant-ctags`
* Run `ctags -R *` in your directory
* In Vim, using `Ctrl-]` to go to a definition (prefix with `Ctrl+W` to open in a new window)
* Use `Ctrl+T` to go back

Note: **`ctags` from Emacs doesn't work**, so make sure to install something better, like `exuberant-ctags` (or possible `universal-ctags`--though I haven't tried that one).

