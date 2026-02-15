---
title: Use "GO386=softfloat" to compile Go for Pentium
date: 2026-02-13
---
Cross-compiling is trivial with pure-Go projects. For example, to compile for a Pentium (maybe even a 486 DX?) running NetBSD, just set a few variables:

```
GOOS=netbsd GOARCH=386 GO386=softfloat make
```

The `GO386=softfloat` setting is necessary for Pentium I/II--without specifying it, [Go 1.16 requires SSE2 by default for "GOARCH=386"](https://github.com/golang/go/issues/40255), and I believe that's only supported on Pentium 4+.

Why do I know this? I have a late '90s Dell Latitude CP (Pentium 233 MHz with 128 MB RAM) running NetBSD and I wanted to run the [aerc](https://aerc-mail.org/) mail client on it. Unfortunately, the prebuilt "i386" NetBSD package crashed with `SIGILL` (illegal instruction). Loading the core dump into GDB revealed that an `xorps` instruction was the problem because that instruction was introduced as part of SSE2 (well after my Pentium was manufactured). I have not yet investigated whether or not it's expected for prebuilt binary packages on "i386" NetBSD to require a Pentium 4, but in my case recompiling the pure-Go aerc project was trivial and I can now read modern email on a nearly 30 year old computer.

