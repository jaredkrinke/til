---
title: Use "--transform" to put files into subdirectory of a tarball
date: 2025-06-26
keywords: [unix]
---
When packaging software with dependencies on Linux (and probably POSIX), it's customary to put everything into a named, versioned subdirectory, e.g. so that `tar zxf foobar-0.1.tar.gz` unpacks everything into its own directory, named `foobar-0.1/`.

An easy way to create such a tarball is:

```
tar czf foobar-$1-linux-x86_64.tar.gz --transform "s,^,foobar-$1/," <list of files and directories here>
```

