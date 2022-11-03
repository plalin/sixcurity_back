# How to Run

1. Install vcpkg
1. Install nlohmann_json by vcpkg
1. Install ODB (https://codesynthesis.com/products/odb/doc/install-build2.xhtml#linux-build2) if you want to build. If you build with ODB, please select a location of libodb.so and libodb-mysql.so at CMakeLists
1. Install Mysql and make a database
1. `$./vcpkg install restinioinstall restinio json-dto sqlitecpp optional-lite`
1. make `build` directory on root directory and move
1. `$ cmake -DCMAKE_TOOLCHAIN_FILE=<Installed vcpkg path>.cmake -DCMAKE_BUILD_TYPE=Release ..` (cmake -DCMAKE_TOOLCHAIN_FILE=~/sixcurity_back/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release ..)
1. `$ make`
1. run `build/src/SIXCURITY --user {mysql username} --database {database name}`

GLHF
