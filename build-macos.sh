#!/bin/bash
brew install curl autoconf automake pkg-config
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
export CFLAGS="-I/opt/homebrew/opt/curl/include -lcurl"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"
sh autogen.sh
./configure
make -j24 clean
make -j24
