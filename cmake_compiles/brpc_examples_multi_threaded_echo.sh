#!/bin/zsh

output=${1}

cmake ../ \
-DCMAKE_INSTALL_PREFIX=${output} \
-DProtobuf_INCLUDE_DIR=${output}/include \
-DProtobuf_LIBRARIES=${output}/lib \
-DProtobuf_PROTOC_LIBRARIES=${output}lib \
-DProtobuf_PROTOC_EXECUTABLE=${output}/bin/protoc \
-DPROTOBUF_LIBRARIES2=${output}/lib/libprotobuf.a \
-DLEVELDB_LIB2=${output}/lib/libleveldb.a \
-DCMAKE_CXX_STANDARD=17 \
-DCMAKE_CXX_STANDARD_REQUIRED=ON \
-DCMAKE_CXX_EXTENSIONS=OFF \
-DOPENSSL_INCLUDE_DIR=/opt/homebrew/include \
-DOPENSSL_CRYPTO_LIBRARY2=/opt/homebrew/lib/libcrypto.a \
-DOPENSSL_SSL_LIBRARY2=/opt/homebrew/lib/libssl.a \


