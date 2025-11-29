---
title: Use "find -exec" instead of "xargs"
date: 2025-11-30
keywords: [unix]
---
If you need to run a command on each file under a directory structure, use the `-exec` option of `find` (it will substitute a file for each `{}`, and you must terminate with `\;`):

```
find some-dir -name '*.mp4' -exec ffmpeg -i {} out/{} \;
```

`find ... -exec` is better than piping to `xargs` because it handles filenames with spaces seamlessly.

