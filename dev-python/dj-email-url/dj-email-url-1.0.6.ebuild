# Copyright 2021-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3_11 python3_{11..14} )

inherit distutils-r1

DESCRIPTION="Use an URL to configure email backend settings in your Django Application"
HOMEPAGE="
	https://github.com/migonzalvar/dj-email-url/
	https://pypi.org/project/dj-email-url/
"
SRC_URI="
	https://github.com/migonzalvar/dj-email-url/archive/v${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~loong ppc ppc64 ~riscv sparc x86"

DOCS=( CHANGELOG.rst README.rst )

distutils_enable_tests unittest
