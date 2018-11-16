#!/bin/bash

cd src
make clean
make
cd ..
./update_image.sh
./run_bochs.sh