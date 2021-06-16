 #!/bin/bash
 echo "Compiling..."
clang++ NewCalc.cpp NewCalcFunctions.cpp -std=c++17 -o Calculator
echo "Done!"
echo "Cleaning up..."
sleep 1
mv Calculator ${HOME}/Desktop
rmdir --ignore-fail-on-non-empty ${HOME}/Terminal-Based-Calculator
echo "Done! Now enjoy your calculator :)!"
