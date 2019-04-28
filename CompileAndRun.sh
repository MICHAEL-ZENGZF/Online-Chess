rm -rf build
mkdir build
cd build
cmake ..
make
cd ..
./bin/kchat-client 3.16.180.60 11000
