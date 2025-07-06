---
title: Use "ssh-keygen -lf" to view SSH server fingerprint before connecting
date: 2025-05-20
keywords: [ssh]
---
When you connect to a server the first time using Secure Shell (SSH), you are shown the server's public key fingerprint. How do you verify that fingerprint?

* If it's a public/well-known server, they should publish their SSH fingerprints -- make sure to view them over HTTPS and not unencrypted HTTP
* If it's your own private server, log in via console and use a command such as:

```
ssh-keygen -lf /etc/ssh/ssh_host_rsa_key.pub
```

I didn't actually learn this *today*, but it's a command I use frequently enough that I wanted to write it down somewhere.

