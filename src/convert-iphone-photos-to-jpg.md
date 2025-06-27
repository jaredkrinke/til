---
title: Use ImageMagick's "mogrify" tool for converting iPhone photos to JPEG
date: 2025-06-27
---
To convert from iPhones' `.heic` format to `.jpg`, use:

```
mogrify -format jpg *.heic
```

At some point, iPhones started defaulting to some new format named HEIC that is very poorly supported by default on Windows (and possibly elsewhere). If you need to use these photos outside of Apple's ecosystem, you can convert them to the universally supported JPEG format using [ImageMagick](https://imagemagick.org/)'s `mogrify` tool, as in the command line above.

