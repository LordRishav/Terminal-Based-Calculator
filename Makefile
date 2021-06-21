
install:
	g++  -Os -std=c++17 Calculator.cpp CalculatorFunctions.cpp -o CalculatorExecutable 
	read -r -p "Would you like a .desktop file on your desktop? [Y/n] " input
	if [[ input = "Y" || input = "y" ]]
	then
	cat > "Calculator.desktop <<- EOF" 
	[Desktop Entry]
	Comment='Calculator for simple problems!'
	Exec=/usr/local/CalculatorFiles/CalculatorExec
	Icon=/usr/local/CalculatorFiles/CalculatorIcon.png
	Name=Calculator
	Terminal=true
	Type=Application
	EOF
	cp Calculator.desktop ${HOME}/Desktop
	if [[ input = "N" || input = "n" ]]
	then
	cat > "Calculator.desktop" <<- EOF
	[Desktop Entry]
	Comment='Calculator for simple problems!'
	Exec=/usr/local/CalculatorFiles/CalculatorExec
	Icon=/usr/local/CalculatorFiles/CalculatorIcon.png
	Name=Calculator
	Terminal=true
	Type=Application
	EOF
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