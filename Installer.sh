#!/bin/bash
read -r -p "Would you like to uninstall or install? (U/I)" input
case $input in
[uU])
    make uninstall
    sudo make sudo_uninstall
    ;;
[iI])
    make compile
    sudo make sudo_install
    read -r -p "Would you like to integrate the calculator to your menu? (Y\n)" input2
    case $input2 in
    [yY])
        make make_desktop_file
        chmod +x Calculator.desktop
        cp Calculator.desktop ${HOME}/Desktop
        ;;
    *)
        echo "OK :("
        ;;
    esac
    ;;
*)
    echo "Hey! That's not an option!"
    ;;
esac
