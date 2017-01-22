#!/bin/sh
# Lara Maia <dev@lara.click> 2016

emerge --sync

emerge -uN app-admin/perl-cleaner app-portage/perl-info app-portage/portage-utils
emerge -uN --nodeps dev-lang/perl
perl-cleaner --all

emerge -uN app-admin/python-updater
python-updater

mkdir -p /etc/portage/package.use
echo "sys-apps/util-linux -systemd build" >> /etc/portage/package.use/util-linux

emerge -uDN --backtrack=500 --with-bdeps=y @system
emerge -uDN --backtrack=500 --with-bdeps=y @world

rm -fv /etc/portage/package.use/util-linux
emerge -uN sys-apps/util-linux

rm -rf /tmp/* /var/tmp/* /usr/portage/distfiles/*
