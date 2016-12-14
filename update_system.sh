#!/bin/sh
# Lara Maia <dev@lara.click> 2016

emerge --sync
emerge -uDN --backtrack=500 --with-bdeps=y @system
emerge -uDN --backtrack=500 --with-bdeps=y @world

rm -rf /tmp/* /var/tmp/* /usr/portage/distfiles/*
