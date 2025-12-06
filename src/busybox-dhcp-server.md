---
title: Busybox includes a DHCP server ("udhcpd")
date: 2025-12-06
---
On an isolated network, you may want to run a DHCP server. Luckily, you might already have one installed via Busybox:

Just create a symlink to `busybox` named `udhcpd`!

Sample config:

```
interface eth0

start 172.16.0.50
end 172.16.0.99

option subnet 255.255.255.0
option router 172.16.0.1
```

Just run the symlinked binary with the config file as an argument (`-f` runs in the foreground, for monitornig purposes):

```
./udhcpd -f udhcpd.conf
```

The config above only assigns IPs on the `eth0` interface (useful if you're e.g. routing to a VPN on another interface), providing IPs on the specified range, with a gateway of `172.16.0.1`.

Oddly, `netstat -tulpn` shows the process listening on all IPs, but it didn't respond on other interfaces, so it seems to work as intended. I wouldn't recommend running a Busybox DHCP server on an exposed network, just in case.

My use case was running an isolated network of vintage computers locally and routing them through a WireGuard VPN over the Internet to other locations. Having a DHCP server allowed me to just plug a router into a Raspberry Pi running WireGuard and this DHCP server.

