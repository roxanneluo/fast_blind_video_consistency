#!/bin/bash
export CXXFLAGS="-std=c++11"
export CFLAGS="-std=c99"

cd ./networks/correlation_package
./make.sh
cd ../resample2d_package 
./make.sh
cd ../channelnorm_package 
./make.sh
cd ..
