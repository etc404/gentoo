# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Qt GUI Pulseaudio Mixer"
HOMEPAGE="https://lxqt-project.org/"

if [[ ${PV} = *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/lxqt/${PN}.git"
else
	SRC_URI="https://github.com/lxqt/${PN}/releases/download/${PV}/${P}.tar.xz"
	KEYWORDS="~amd64 ~arm ~arm64 ~hppa ~riscv ~x86"
fi

LICENSE="GPL-2 GPL-2+"
SLOT="0"

BDEPEND="
	>=dev-qt/linguist-tools-5.15:5
	>=dev-util/lxqt-build-tools-0.12.0
	virtual/pkgconfig
"
DEPEND="
	dev-libs/glib:2
	>=dev-qt/qtgui-5.15:5
	>=dev-qt/qtcore-5.15:5
	>=dev-qt/qtwidgets-5.15:5
	media-sound/pulseaudio[glib]
"
RDEPEND="${DEPEND}"
