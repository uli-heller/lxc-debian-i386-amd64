Debian Images Are Pretty Big
============================

Name                |Arch |Größe
--------------------|-----|-----
Ubuntu 22.04 (jammy)|amd64|110M 
Ubuntu 22.04 (jammy)|i386 |90M  
Debian 12 (bookworm)|amd64|123M 
Debian 12 (bookworm)|i386 |124M 

Maybe look at the debian docker images to get some ideas on how to reduce the size?
[bookworm/slim/rootfs.manifest](https://github.com/debuerreotype/docker-debian-artifacts/blob/1f1e36af44a355418661956f15e39f5b04b848b6/bookworm/slim/rootfs.manifest)

Debian Bookworm Vs. Debian Slim
-------------------------------

```
$ ./non-slim-packages.sh bookworm-slim-rootfs.manifest bookworm-minimal.packages
...
systemd
systemd-sysv
tasksel
tasksel-data
udev
usrmerge
vim-common
vim-tiny
whiptail
```

Debian Bookworm Vs. Ubuntu Jammy
--------------------------------

```
$ diff bookworm-minimal.packages jammy-minimal.packages 
```

Kandidaten zur Entfernung von "bookworm":

- cpio
- dmidecode
- fdisk
- ifupdown
- libedit2
- libfdisk1 (*)
- libfile-find-rule-perl
- libnftables1
- libnftnl11
- libnumber-compare-perl
- libperl5.36
- nano
- nftables
- perl
- perl-modules-5.36
- util-linux-extra (*)

Kandidaten zur Entfernung von "jammy":

- console-setup
- console-setup-linux
- dbus
- distro-info
- distro-info-data
- eject
- iso-codes
- kbd
- keyboard-configuration
- libatm1
- libdbus-1-3
- libestr0
- libexpat1 (*)
- libicu70
- libpcre3 (*)
- libpython3-stdlib (*)
- libpython3.10-minimal (*)
- libpython3.10-stdlib (*)
- libsqlite3-0 (*)
- locales
- lsb-base (*)
- lsb-release (*)
- media-types (*)
- netcat-openbsd
