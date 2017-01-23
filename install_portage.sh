#!/bin/sh
# Lara Maia <dev@lara.click> 2016

set -e

wget http://distfiles.gentoo.org/snapshots/portage-latest.tar.bz2

mkdir -p /usr
bzcat portage-latest.tar.bz2 | tar -xf - -C /usr

mkdir -p /usr/portage/distfiles /usr/portage/metadata /usr/portage/packages

rm -f portage-latest.tar.bz2
