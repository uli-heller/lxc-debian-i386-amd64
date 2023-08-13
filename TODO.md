TODO
====

Open
----

### Debian - debconf: delaying package configuration, since apt-utils is not installed

```
2023-08-13 13:05:36 STDOUT Get:40 https://deb.debian.org/debian bookworm/main i386 libpam-cap i386 1:2.66-4 [14.7 kB]
2023-08-13 13:05:37 STDERR debconf: delaying package configuration, since apt-utils is not installed
2023-08-13 13:05:37 STDOUT Fetched 9639 kB in 3s (2899 kB/s)
2023-08-13 13:05:37 STDOUT Selecting previously unselected package libargon2-1:i386.
```

### Debian - debconf: unable to initialize frontend: Dialog

```
2023-08-13 13:05:42 STDOUT Get:2 https://deb.debian.org/debian bookworm/main i386 publicsuffix all 20230209.2326-1 [126 kB]
2023-08-13 13:05:42 STDERR debconf: unable to initialize frontend: Dialog
2023-08-13 13:05:42 STDERR debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78, <> line 2.)
2023-08-13 13:05:42 STDERR debconf: falling back to frontend: Readline
2023-08-13 13:05:42 STDOUT Fetched 186 kB in 0s (823 kB/s)
```

### Debian - Unable to locate package language-pack-en

```
2023-08-13 13:05:56 STDOUT Reading state information...
2023-08-13 13:05:56 STDERR E: Unable to locate package language-pack-en
2023-08-13 13:05:56 STDOUT Reading package lists...
2023-08-13 13:05:56 STDOUT Building dependency tree...
2023-08-13 13:05:56 STDOUT Reading state information...
2023-08-13 13:05:56 STDERR E: Unable to locate package language-pack-en-base
2023-08-13 13:05:56 STDOUT Reading package lists...
```

### /usr/sbin/debootstrap: 1609: cannot create /home/uli/git/github/uli-heller/lxc-debian-i386-amd64/bookworm-i386/rootfs/test-dev-null: Permission denied

This error is probably caused by the mount options oh "/home":

```
/dev/mapper/ubuntu--vg-homelv on /home type ext4 (rw,nosuid,nodev,relatime)
```

Done
----

- Unable to use packages v1.11
  ```
  $ xz -cd dp-jammy-v1.11-amd64-lxcimage.tar.xz| tar tvf -
  tar: Das sieht nicht wie ein „tar“-Archiv aus.
  tar: Beende mit Fehlerstatus aufgrund vorheriger Fehler
  ```
  - Fixed by executing `./create-release.sh` again  
- Use only one way to specify the architecture
  - i386 and amd64
  - i686 and x86_64
- Same packages for i386 and amd64
  - i386 always has packages from debs/...
  - amd64 is missing some of them
- Simple building of DEBs - build.sh
- Fix error
  ```
  The following packages have unmet dependencies:
   joe-jupp : Depends: jupp (>= 3.1.37) but it is not installable
  E: Unable to correct problems, you have held broken packages.
  ```
- Fix error "E: Package 'at' has no installation candidate"
- /etc/machine-id
  - https://systemd.io/BUILDING_IMAGES/
  - https://linuxcontainers.org/lxd/docs/master/image-handling/#
- /etc/ssh/*host*key
- Encrypt modifications folder
- Enable multiple potential modifications
  - modifications folder
  - modifications prefix
- New version: HEAD -> v1.7-3-g197e1a5
- Added my personal preferences - option '-U'
- Skip already done steps
- ssh pubkeys for the container (root and ubuntu)
- /etc/ssh/sshd_config for the container

### Debian - bookworm and 386

```
2023-08-13 13:05:31 STDOUT Get:10 https://deb.debian.org/debian bookworm-backports/main Translation-en [11.3 kB]
2023-08-13 13:05:32 STDOUT Reading package lists...
2023-08-13 13:05:32 STDERR E: The repository 'https://deb.debian.org/debian bookworm-security Release' does not have a Release file.
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'restricted/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm InRelease' doesn't have the component 'restricted' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'restricted/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm InRelease' doesn't have the component 'restricted' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'universe/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm InRelease' doesn't have the component 'universe' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'universe/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm InRelease' doesn't have the component 'universe' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'multiverse/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm InRelease' doesn't have the component 'multiverse' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'multiverse/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm InRelease' doesn't have the component 'multiverse' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'restricted/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm-updates InRelease' doesn't have the component 'restricted' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'restricted/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm-updates InRelease' doesn't have the component 'restricted' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'universe/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm-updates InRelease' doesn't have the component 'universe' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'universe/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm-updates InRelease' doesn't have the component 'universe' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'multiverse/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm-updates InRelease' doesn't have the component 'multiverse' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'multiverse/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm-updates InRelease' doesn't have the component 'multiverse' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'restricted/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm-backports InRelease' doesn't have the component 'restricted' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'restricted/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm-backports InRelease' doesn't have the component 'restricted' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'universe/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm-backports InRelease' doesn't have the component 'universe' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'universe/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm-backports InRelease' doesn't have the component 'universe' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'multiverse/binary-i386/Packages' as repository 'https://deb.debian.org/debian bookworm-backports InRelease' doesn't have the component 'multiverse' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDERR W: Skipping acquire of configured file 'multiverse/i18n/Translation-en' as repository 'https://deb.debian.org/debian bookworm-backports InRelease' doesn't have the component 'multiverse' (component misspelt in sources.list?)
2023-08-13 13:05:32 STDOUT Reading package lists...
```

... maybe use these sources:

```
deb http://deb.debian.org/debian bookworm contrib main non-free-firmware
deb http://deb.debian.org/debian bookworm-updates contrib main non-free-firmware
deb http://deb.debian.org/debian bookworm-backports contrib main non-free-firmware
deb http://deb.debian.org/debian-security bookworm-security contrib main non-free-firmware
```
