#!/bin/bash
mkdir build
cd build
echo coucou
echo $backend
echo $backend_name_in_build
cmake ../ \
      -GNinja \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DRBDL_USE_CASADI_MATH=$rbdl_use_casadi_math

ninja install
