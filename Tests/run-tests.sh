#!/bin/bash


echo "#### Building Tools ####"
cd Tools;
make -j8 DIM=2 > /dev/null;
cd ..;


echo "#### Effective 1D Flat Flames ####"
echo "Test Left:"
cd effective-1d-flatflames/Left;
./run.sh;
cd ../..;

echo "Test Right:"
cd effective-1d-flatflames/Right;
./run.sh;
cd ../..;

echo "Test Up:"
cd effective-1d-flatflames/Up;
./run.sh;
cd ../..;

echo "Test Down:"
cd effective-1d-flatflames/Left;
./run.sh;
cd ../..;