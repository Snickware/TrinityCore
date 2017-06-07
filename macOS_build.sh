#!/bin/sh
# Install components first with brew:
#  brew install mysql openssl readline cmake boost zlib 

# default cmake configure
cmake ../ -GXcode \
-DMYSQL_ADD_INCLUDE_PATH=/usr/local/include \
-DMYSQL_LIBRARY=/usr/local/lib/libmysqlclient.dylib \
-DREADLINE_INCLUDE_DIR=/usr/local/opt/readline/include \
-DREADLINE_LIBRARY=/usr/local/opt/readline/lib/libreadline.dylib \
-DBOOST_INCLUDEDIR=/usr/local/include \
-DBOOST_LIBRARYDIR=/usr/local/lib \
-DOPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include \
-DOPENSSL_SSL_LIBRARIES=/usr/local/opt/openssl/lib/libssl.dylib \
-DOPENSSL_CRYPTO_LIBRARIES=/usr/local/opt/openssl/lib/libcrypto.dylib \
-DZLIB_ROOT=/usr/local/opt/zlib \
-DCMAKE_INSTALL_PREFIX=$HOME/snickcore-server \
-DWITH_WARNINGS=1 \
-DTOOLS=1

# To build run:
# xcodebuild -target install -config Release


# for debug remember -DCMAKE_BUILD_TYPE=Debug to cmake