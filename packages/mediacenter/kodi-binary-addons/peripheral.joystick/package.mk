# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Lukas Rusak (lrusak@libreelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="peripheral.joystick"
PKG_VERSION="1.4.8-Leia"
PKG_SHA256="b6ddefed73582a3dc9bc36a9d40f8309139802ef9cfc130933bd0fe6e569d933"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/xbmc/peripheral.joystick"
PKG_URL="https://github.com/xbmc/peripheral.joystick/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform p8-platform"
PKG_SECTION=""
PKG_SHORTDESC="peripheral.joystick: Joystick support in Kodi"
PKG_LONGDESC="peripheral.joystick provides joystick support and button mapping"
PKG_BUILD_FLAGS="+lto"

PKG_IS_ADDON="embedded"
PKG_ADDON_TYPE="kodi.peripheral"

post_makeinstall_target() {
    cp -a $PKG_DIR/files/* $INSTALL
}