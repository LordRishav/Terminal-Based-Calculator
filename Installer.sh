#!/usr/bin/env bash
echo "Compiling..."
clang++ Calculator.cpp CalculatorFunctions.cpp -std=c++17 -o CalculatorExec
echo "Done!"
echo "Cleaning up..."
sleep 1
mkdir ${HOME}/Calculator
mv CalculatorExec ${HOME}/Calculator
desktop_file='Calculator.desktop'
cat >"$desktop_file" <<-EOF
	[Desktop Entry]
	Name=Calculator
	Exec=${HOME}/Calculator/CalculatorExec
    Terminal=true
    Comment=Calculator for simple math problems.
    Type=application
	...
EOF
mv Calculator.desktop ${HOME}/Desktop
rm -rf ${HOME}/Terminal-Based-Calculator
echo "Done!"
echo "Now enjoy your calculator :)!"
echo "Closing in:"
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
exit
