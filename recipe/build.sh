#!/bin/bash
mkdir build
cd build

cmake ../ \
      -GNinja \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DMATH_LIBRARY_BACKEND=$backend_name_in_build

ninja install
