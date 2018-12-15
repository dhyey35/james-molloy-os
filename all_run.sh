#!/bin/bash
./make_initrd test.txt test.txt test2.txt test2.txt creators.txt creators.txt
cd src
make clean
make
cd ..
./update_image.sh
./run_bochs.sh