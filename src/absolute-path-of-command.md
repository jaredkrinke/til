---
title: Get the path of commands using "realpath" and "which"
date: 2025-05-31
keywords: [unix]
---
Sometimes you need to load resources that are relative to some tool. On POSIX (with a compatible shell), you can use:

```sh
realpath $(which command)
```

This finds the absolute path (including resolving links) to the command named `command` which is on `PATH`.

And if you need to run a command in the directory of a tool:

```sh
pushd $(dirname $(realpath $(which command)))
command ...
popd
```

