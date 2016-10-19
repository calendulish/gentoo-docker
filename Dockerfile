FROM gentoo/stage3-amd64
MAINTAINER Lara Maia - dev@lara.click
LABEL Description="Gentoo with portage, git, repoman, systemd"

ADD install_portage.sh /
ADD set_use_flags.sh /
ADD update_system.sh /
ADD install_extra_packages.sh /

RUN /install_portage.sh
RUN /set_use_flags.sh
RUN /update_system.sh
RUN /install_extra_packages.sh
