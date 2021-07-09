mkdir build
cd build

cmake ../ ^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
    -DRBDL_BUILD_STATIC=ON ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DRBDL_USE_CASADI_MATH="%rbdl_use_casadi_math%"

cmake --build ./ ^
    --config Release ^
    --target install
