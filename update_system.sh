#!/bin/sh
# Lara Maia <dev@lara.click> 2016

emerge --sync
emerge -uDN @world

rm -rf /tmp/* /var/tmp/* /usr/portage/distfiles/*
