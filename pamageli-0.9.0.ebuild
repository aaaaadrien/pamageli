# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="PAckage MAnager for GEntoo LInux (and Calculate Linux)"
HOMEPAGE="https://github.com/aaaaadrien/pamageli"
SRC_URI="https://github.com/aaaaadrien/pamageli/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="app-shells/bash
		app-portage/eix
		app-portage/portage-utils
		app-portage/gentoolkit"
RDEPEND="${DEPEND}"


src_install() {
	dobin "${PN}"
}
