# How to Run

1. Install vcpkg
1. `$./vcpkg install restinioinstall restinio json-dto sqlitecpp optional-lite`
1. make `build` directory on root directory and move
1. `$ cmake -DCMAKE_TOOLCHAIN_FILE=<Installed vcpkg path>.cmake -DCMAKE_BUILD_TYPE=Release ..`
1. `$ make`
1. run `build/src/SIXCURITY`

need modify sqlite to postgresql

GLHF
