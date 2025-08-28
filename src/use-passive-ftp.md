---
title: "Use FTP's \"passive\" mode when behind NAT"
date: 2025-08-27
---
FTP is an old, insecure protocol... but it's still useful on isolated networks of vintage computers.

To my surprise, by default, FTP clients open a connection to the server *and expect the server to open a connection back to them*. This, obviously, doesn't work behind network address translation (NAT) routers.

The "solution" (scare quotes because I don't particluarly like requiring two separate ports) is FTP's passive mode, where the server tells the client a second port that the client should connect back on.

To configure passive mode in **vsftpd** (`vsftpd.conf`):

```ini
pasv_enable=yes
pasv_min_port=2010
pasv_max_port=2012
```

You'll also need to configure some clients to use passive mode in the first place. Vintage Internet Explorer appears to use passive mode by default, for what it's worth.

