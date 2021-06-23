#!/bin/bash
read -r -p "Would you like to uninstall or install? (U/I)" input
case $input in
[uU])
    make uninstall
    sudo make sudo_uninstall
    ;;
[iI])
    make compile
    make make_desktop_file
    sudo make sudo_install
    read -r -p "Would you like a .desktop file on your desktop? (Y\n)" input2
    case $input2 in
    [yY])
        cp Calculator.desktop ${HOME}/Desktop
        ;;
    *)
        echo "Hey! That's not an option!"
        ;;
    esac
    ;;
*)
    echo "Hey! That's not an option!"
    ;;
esac
