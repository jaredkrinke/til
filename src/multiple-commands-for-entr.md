---
title: Use "sh -c" to supply multiple commands to "entr"
date: 2025-12-29
---
[entr](https://github.com/eradman/entr) lets you re-run commands when files change. It's great for iterating on code because you don't have to switch contexts; your code just re-runs when you save the file.

If you need to run multiple commands or redirect input/output, just invoke your shell, e.g.:

```
ls foo.c |entr sh -c "make && make test"
```

