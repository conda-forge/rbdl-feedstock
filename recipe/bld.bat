mkdir build
cd build

cmake ../ ^
    -G "Visual Studio 16 2019" -A x64 ^ 
    -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
    -DRBDL_BUILD_STATIC=ON ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DRBDL_USE_CASADI_MATH=ON

cmake --build ./ ^
    --config Release ^
    --target install
