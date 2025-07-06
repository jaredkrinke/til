---
title: Automatically wrapping lines in Vim and Emacs
date: 2025-05-17
keywords: [emacs,vim]
---
Despite using Vim for decades at this point, I only recently learned that **Vim can automatically wrap text onto multiple lines using `gq`** (followed by motion or preceded by selection).

Emacs (which I began using in order to play with Common Lisp) has similar functionality, but instead of calling it "formatting" or "wrapping", **Emacs calls it "filling"**; specifically, the `fill-region` command is bound to `M-q` (`Alt+q`) by default.

As far as I can tell, **Visual Studio Code has no such functionality built in**.

