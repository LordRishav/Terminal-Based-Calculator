#!/bin/bash
read -r -p "Would you like to uninstall or install? (u/I)" input
case $input in
[uU])
make uninstall
sudo make sudo_uninstall
;;
[iI])
make install
sudo make sudo_install
;;
*)
echo "Hey! That's not an option!"
;;
esac