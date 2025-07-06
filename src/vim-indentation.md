---
title: Difference between Vim's tabstop, softtabstop, and shiftwidth
date: 2025-05-25
keywords: [vim]
---
In the past, I only knew about Vim's `tabstop` setting, but it no longer appears to be sufficient; there are 3 settings you need to understand:

* `tabstop` / `ts`: width of an actual tab character, in spaces
* `softtabstop` / `sts`: the amount of space (in spaces) that hitting the Tab key should indent
* `shiftwidth` / `sw`: the amount of indentation (in spaces) that built-in functionality should insert

There is also the `expandtab` setting, which inserts space characters instead of using tabs.

Now, finally, here is how *I* use these settings:

```vim
set ts=4
set sw=4
```

This makes tabs 4 spaces large, allows (by default) using actual tab characters (instead of 4 spaces), and ensures that built-in language support inserts a single tab for indentation (instead of 2 tabs, which is what you get with `ts=4` and `sw` set to its default of 8).

