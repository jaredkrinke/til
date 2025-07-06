---
title: Use ":terminal" in Vim for a better integrated terminal
date: 2025-05-19
keywords: [vim]
---
**Vim has a fully integrated terminal that can be accessed via `:ter` (`:terminal`)** (run `:help :terminal` to learn about it):

* It creates a split that **operates like a normal Vim window** (switch/move via `Ctrl+w` and `hjkl/HJKL`)
* You can **move around or mousewheel scroll by entering "normal" mode with `Ctrl+w, N`** (N.B. capital `N`)
* Hit **`i` to go back to shell/"job" mode**
* While in "normal" mode (usual Vim navigation mode), you can copy ("yank") with `y` as usual
* In shell ("job") mode, you *cannot* paste using `p` and instead need to **use `Ctrl+w, ", "` to paste/"put"** (yes, two quotation marks--this apparently is pasting from a Vim register named `"`)

## Context
As a long time terminal user, I'm generally interacting with the terminal via [GNU Screen](https://www.gnu.org/software/screen/), which allows me to quickly switch between virtual terminals, split the screen, copy-paste without the mouse, etc. These days, [tmux](https://github.com/tmux/tmux/wiki) appears more popular (likely for good reasons like persisting screen splits), but terminal multiplexers aren't the only game in town.

Namely, Emacs has an integrated shell that supports copy/paste, Emacs movement shortcuts, and probably a lot more I haven't discovered. Regardless, I still regularly use Vim due to its lighter footprint and my own muscle memory.

I was aware of `:shell` in vi/Vim, but it's clunky and doesn't integrate with Vim--it's more of a way to leave vi and then come back easily. Recently, I was pointed to `:terminal` and it is *so* much better than `:shell`, thanks to the features noted above.

