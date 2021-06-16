#!/bin/bash
echo "Compiling..."
clang++ Calculator.cpp CalculatorFunctions.cpp -std=c++17 -o Calculator
echo "Done!"
echo "Cleaning up..."
sleep 1
mv Calculator ${HOME}/Desktop
cd .git/
rmdir --ignore-fail-on-non-empty ${HOME}/Terminal-Based-Calculator/.git
rmdir --ignore-fail-on-non-empty ${HOME}/Terminal-Based-Calculator
echo "Done!"
echo "Now enjoy your calculator :)!"
echo "Closing in:"
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
killall alacritty