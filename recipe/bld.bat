mkdir build
cd build

cmake ../ ^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
    -DRBDL_BUILD_STATIC=OFF ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DRBDL_USE_CASADI_MATH=ON

cmake --build ./ ^
    --config Release ^
    --target install
