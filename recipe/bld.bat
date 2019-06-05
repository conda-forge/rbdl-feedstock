mkdir build
cd build

cmake ../^
    -G"%CMAKE_GENERATOR%"^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%"

cmake --build ./^
    --config Release^
    --target install
