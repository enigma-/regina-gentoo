# Copyright 1999-2013 Gentoo Foundation, William Pettersson
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_DEPEND="2:2.6"


inherit eutils cmake-utils python

DESCRIPTION="Software for 3-manifold topology and normal surface theory"
HOMEPAGE="http://regina.source-forge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="qt4 cppunit sourcehighlight doc mpi"

RDEPEND="dev-libs/boost[python]
	dev-lang/python
	dev-libs/gmp[cxx]
	dev-libs/popt
	dev-libs/libxml2
	qt4? (
		>=dev-qt/qtcore-4.6
		>=dev-qt/qtgui-4.6
		sourcehighlight? (
			>=dev-util/source-highlight-3.1.1
		)
	)
	cppunit? (
		dev-util/cppunit
	)
	doc? (
		app-doc/doxygen
		dev-libs/libxslt
		)
	mpi? (
		virtual/mpi
	) "
DEPEND="${RDEPEND}"