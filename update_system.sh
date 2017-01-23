#!/bin/sh
# Lara Maia <dev@lara.click> 2016

set -e

emerge --sync

emerge -uN app-admin/perl-cleaner app-portage/perl-info app-portage/portage-utils
emerge -uN --nodeps dev-lang/perl
emerge -C $(qlist -IC virtual/perl)
perl-cleaner --reallyall

emerge -uN app-admin/python-updater
python-updater

emerge -uN --nodeps readline
emerge @preserved-rebuild

mkdir -p /etc/portage/package.use
echo "sys-apps/util-linux -systemd -udev build" >> /etc/portage/package.use/util-linux

emerge -uDN --backtrack=500 --with-bdeps=y @system
emerge -uDN --backtrack=500 --with-bdeps=y @world

rm -fv /etc/portage/package.use/util-linux

emerge -uDN --with-bdeps=y @world
emerge @preserved-rebuild

rm -rf /tmp/* /var/tmp/* /usr/portage/distfiles/*
