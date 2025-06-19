mkdir build
cd build

cmake ../ ^
    -GNinja ^
    -DCMAKE_C_COMPILER=%CC% ^
    -DCMAKE_CXX_COMPILER=%CXX% ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
    -DRBDL_BUILD_STATIC=OFF ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DRBDL_BUILD_CASADI=ON

cmake --build ./ ^
    --config Release ^
    --target install
