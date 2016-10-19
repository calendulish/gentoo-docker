#!/bin/sh
# Lara Maia <dev@lara.click> 2016

mkdir -p /etc/portage

USE="systemd -consolekit"

echo "USE=\"\$USE $USE\"" >> /etc/portage/make.conf

unset USE
