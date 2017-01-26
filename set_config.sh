#!/bin/sh
# Lara Maia <dev@lara.click> 2016

set -e

mkdir -p /etc/portage

USE="64bit multilib X xcomposite wayland gles gles2 systemd -consolekit -hardened threads"
ACCEPT_KEYWORDS="~amd64"
ACCEPT_LICENSE="*"
PYTHON_SINGLE_TARGET="python3_4"
PYTHON_TARGETS="python3_4 python2_7"
RUBY_TARGETS="ruby23"
FEATURES="-usersandbox -userpriv nodoc noinfo"

echo "USE=\"\$USE $USE\"" >> /etc/portage/make.conf
echo "ACCEPT_KEYWORDS=\"$ACCEPT_KEYWORDS\"" >> /etc/portage/make.conf
echo "ACCEPT_LICENSE=\"$ACCEPT_LICENSE\"" >> /etc/portage/make.conf
echo "PYTHON_SINGLE_TARGET=\"$PYTHON_SINGLE_TARGET\"" >> /etc/portage/make.conf
echo "PYTHON_TARGETS=\"$PYTHON_TARGETS\"" >> /etc/portage/make.conf
echo "RUBY_TARGETS=\"$RUBY_TARGETS\"" >> /etc/portage/make.conf
echo "FEATURES=\"$FEATURES\"" >> /etc/portage/make.conf

eselect profile set default/linux/amd64/13.0/systemd

unset USE
unset ACCEPT_KEYWORDS
unset ACCEPT_LICENSE
unset PYTHON_SINGLE_TARGET
unset PYTHON_TARGETS
unset RUBY_TARGETS
unset FEATURES
