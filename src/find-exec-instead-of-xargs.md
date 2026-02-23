---
title: Use "xargs" instead of "find -exec"
date: 2025-11-30
keywords: [unix]
---

If you need to run a command on each file under a directory structure, use the `xargs` in conjunction with `find`.

```
find some-dir -type f -name '*.mp4' -print0 | xargs -0 -I XX ffmpeg -i XX out/XX
```

piping to `xargs` is better than `find ... -exec` because is spread the load over all the core of your machine. It also spwan less processes if the task can handle multuple input. `find .. -exec` spwan on process per line, one at a time. Also `xargs` has a better templaing using `-I <replacement>`.

If you have any concern with filenames with spaces, use `-print0` for find and `-0` for xargs to use null separator.

