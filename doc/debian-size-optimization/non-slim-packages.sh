#!/bin/sh
#
# $1 ... bookworm-slim-rootfs.manifest
# $2 ... bookworm-minimal.packages
#
while read -r p r; do
  b="$(echo "${p}"|cut -d ":" -f 1)"
  grep "^${b}" "$1" >/dev/null  2>&1 || echo "${p}"
done <"$2"
