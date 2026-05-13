rm -r build-lfortran

CC=/usr/bin/clang \
  FC=/home/ouchene/gitProjects/lfortran/inst/bin/lfortran \
  cmake -S . -B build-lfortran \
  -G "Unix Makefiles" \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_TESTING=OFF \
  -DDOUBLE_PRECISION=ON \
  -DBLAS_LIBRARIES=/usr/lib/x86_64-linux-gnu/libblas.so \
  -DLAPACK_LIBRARIES="/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so"

cmake --build build-lfortran --target nwtclibs -- -k -j$(nproc)
