#!/bin/sh
# Lara Maia <dev@lara.click> 2016

set -e

PACKAGES="dev-vcs/git
          app-portage/repoman"

emerge -n $PACKAGES

rm -rf /tmp/* /var/tmp/* /usr/portage/distfiles/*
