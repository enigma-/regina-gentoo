# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3{_6,_7} )

inherit eutils cmake-utils python-r1 git-r3

DESCRIPTION="Software for 3-manifold topology and normal surface theory"
HOMEPAGE="http://regina-normal.github.io/"
EGIT_REPO_URI="git@github.com:regina-normal/regina.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+qt5 test doc mpi"

RDEPEND="dev-libs/boost[python]
	${PYTHON_DEPS}
	dev-libs/gmp[cxx]
	dev-libs/popt
	dev-libs/libxml2
	dev-db/tokyocabinet
	qt5? (
		dev-qt/qtwidgets:5
		dev-qt/qtsvg:5
	)
	mpi? (
		virtual/mpi
	)"
DEPEND="${RDEPEND}
	doc? (
		app-doc/doxygen
		dev-libs/libxslt
	)
	test? (
		dev-util/cppunit
	)"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_disable qt5 GUI)
	)
	cmake-utils_src_configure
}
