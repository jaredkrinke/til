---
title: Use ":read !" to insert the result of a shell command in Vim
date: 2025-06-12
keywords: [vim]
---
Sometimes, I need to insert a list of files into a text file I'm editing in Vim. Here's how to do it:

```
:read !ls *.md
```

Any command can follow the `!`.

