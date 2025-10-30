---
title: Use "socat" for temporarily forwarding ports
date: 2025-10-29
---
Temporarily forward ports on Linux with the `socat` tool:

```txt
socat UDP4-LISTEN:12345,fork,reuseaddr,bind=127.0.0.1 UDP4:1.2.3.4:34567
```

This forwards UDP datagrams from 127.0.0.1 on port 12345 to a remote host 1.2.3.4, port 34567.  Use "TCP" instead of "UDP" to forward TCP streams.

Notes:

* `fork` means it will fork a new process for each remote host
* UDP is connectionless, so `socat` UDP forks won't automatically terminate unless a timeout is specified using `-T`
* `reuseaddr` might not be needed -- I haven't tested it in depth

