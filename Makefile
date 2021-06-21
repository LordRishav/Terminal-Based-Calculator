
install:
	g++  -Os -std=c++17 Calculator.cpp CalculatorFunctions.cpp -o CalculatorExecutable 
	read -r -p "Would you like a .desktop file on your desktop? [Y/n] " input
	if [[ input = "Y" || input = "y" ]] then;
	cat > "Calculator.desktop" 
	echo "[Desktop Entry]" >> Calculatlor.desktop 
	echo "Name=Calculator" >> Calculator.desktop
	echo "Comment='A simple calculator, for simple math problems'" >> Calculator.desktop
	echo "Exec=/usr/local/CalculatorFiles/CalculatorExecutable" >> Calculator.desktop
	echo "Icon=/usr/local/CalculatorFiles/CalculatorIcon.png" >> Calculator.desktop
	echo "Type=Application" >> Calculator.desktop
	echo "Terminal=true" >> Calculator.desktop
	cp Calculator.desktop ${HOME}/Desktop
	fi
	if [[ input = "N" || input = "n" ]] then;
	cat > "Calculator.desktop"
	echo "[Desktop Entry]" >> Calculatlor.desktop 
	echo "Name=Calculator" >> Calculator.desktop
	echo "Comment='A simple calculator, for simple math problems'" >> Calculator.desktop
	echo "Exec=/usr/local/CalculatorFiles/CalculatorExecutable" >> Calculator.desktop
	echo "Icon=/usr/local/CalculatorFiles/CalculatorIcon.png" >> Calculator.desktop
	echo "Type=Application" >> Calculator.desktop
	echo "Terminal=true" >> Calculator.desktop
	fi

sudo_install:
	mkdir /usr/local/CalculatorFiles
	cp CalculatorExecutable CalculatorIcon.png /usr/local/CalculatorFiles
	cp Calculator.desktop /usr/local/share/applications

uninstall:
	rm ${HOME}/Desktop/Calculator.desktop

sudo_uninstall:
	rm -rf /usr/local/CalculatorFiles
	rm /usr/local/share/applications/Calculator.desktop

.PHONY: install sudo_install uninstall sudo_uninstall