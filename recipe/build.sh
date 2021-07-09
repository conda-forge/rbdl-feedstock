#!/bin/bash
mkdir build
cd build

echo $backend
echo $rbdl_use_casadi_math
cmake ../ \
      -GNinja \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DRBDL_USE_CASADI_MATH=$rbdl_use_casadi_math

ninja install
