---
title: FFmpeg can be used for batch lossless video cutting
date: 2025-12-01
---
Sadly, not many video editing tools support lossless cutting -- and even fewer support batch processing.

Fortunately, FFmpeg supports lossless cutting using the `-ss hh:mm:ss` option and, being a command line tool, it can be used for batch processing.

Here's an example (on POSIX) that cuts roughly the first 26 seconds off of each video in `Videos/` (lossless and aligned to keyframes), putting the resulting videos into `out/` (you can't edit in place losslessly):

```
find Videos -name '*.mp4' -exec ffmpeg -i {} -ss 26 -c copy out/{} \;
```

The `find` command runs the `-exec ...` command for each `*.mp4` file, with `{}` substituted for the filename (including any spaces--also note the `\;` at the end), so the FFmpeg command line is similar to:

```
ffmpeg -i video.mp4 -ss 26 -c copy out/video.mp4
```

Explanation:

* `-i video.mp4`: Opens `video.mp4`
* `-ss 26`: Only keeps the video starting near 26 seconds (next keyframe)
* `-c copy`: Copies video/audio streams (i.e. losslessly cuts) -- this option is needed to avoid re-encoding!
* `out/video.mp4`: Writes the output to `out/video.mp4`

Note: on Windows, you could use `for %i in (*.mp4) do ffmpeg -i %i ...`.

