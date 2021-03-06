################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="font-cursor-misc"
PKG_VERSION="1.0.3"
PKG_SHA256="17363eb35eece2e08144da5f060c70103b59d0972b4f4d77fd84c9a7a2dba635"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/font/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain util-macros font-util:host"
PKG_SECTION="x11/font"
PKG_SHORTDESC="font-cursor-misc: X11 cursor fonts"
PKG_LONGDESC="X11 cursor fonts."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-fontrootdir=/usr/share/fonts"

post_install() {
  mkfontdir $INSTALL/usr/share/fonts/misc
  mkfontscale $INSTALL/usr/share/fonts/misc
}
