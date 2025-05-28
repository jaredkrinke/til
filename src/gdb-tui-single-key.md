---
title: GDB has a built-in TUI mode with single key operation
date: 2025-05-27
---
**The GNU Debugger (GDB) has a built-in TUI mode** that can be accessed with the `tui` command or by passing `-tui` on the command line. It provides:

* Source file view
* Multiple windows (using Emacs keybindings)
* **Single Key mode** (enter/exit using Ctrl+x, s)

That last one is exciting because it allows for quickly stepping through code using:

* `n`: "next" (which I would call "step over")
* `s`: "step" (which I would call "step into")
* `f`: "finish" (whicih I would call "step out")

I've never enjoyed using GDB because I never took the time to learn it. As someone with extensive experience in WinDbg, I didn't understand how Linux developers could put up with GDB's clunky line-based interface--it turns out they probably don't! I suspect they use GDB's TUI mode, a separate GDB frontend, ... or printf debugging!

