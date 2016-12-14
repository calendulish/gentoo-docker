#!/bin/sh
# Lara Maia <dev@lara.click> 2016

mkdir -p /etc/portage

USE="systemd -consolekit"
ACCEPT_KEYWORDS="~amd64"
ACCEPT_LICENSE="*"
PYTHON_SINGLE_TARGET="python3_4"
PYTHON_TARGETS="python3_4 python2_7"
RUBY_TARGETS="ruby23"

echo "USE=\"\$USE $USE\"" >> /etc/portage/make.conf
echo "ACCEPT_KEYWORDS=\"$ACCEPT_KEYWORDS\"" >> /etc/portage/make.conf
echo "ACCEPT_LICENSE=\"$ACCEPT_LICENSE\"" >> /etc/portage/make.conf
echo "PYTHON_SINGLE_TARGET=\"$PYTHON_SINGLE_TARGET\"" >> /etc/portage/make.conf
echo "PYTHON_TARGETS=\"$PYTHON_TARGETS\"" >> /etc/portage/make.conf
echo "RUBY_TARGETS=\"$RUBY_TARGETS\"" >> /etc/portage/make.conf

unset USE
unset ACCEPT_KEYWORDS
unset ACCEPT_LICENSE
unset PYTHON_SINGLE_TARGET
unset PYTHON_TARGETS
unset RUBY_TARGETS
