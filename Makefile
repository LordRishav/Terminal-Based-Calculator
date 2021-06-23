
compile:
	g++  -Os -std=c++17 Calculator.cpp CalculatorFunctions.cpp -o CalculatorExecutable 
sudo_install:
	mkdir /usr/local/CalculatorFiles
	cp CalculatorExecutable CalculatorIcon.png /usr/local/CalculatorFiles
	cp Calculator.desktop /usr/local/share/applications

uninstall:
	rm ${HOME}/Desktop/Calculator.desktop

sudo_uninstall:
	rm -rf /usr/local/CalculatorFiles
	rm -f bah/usr/local/share/applications/Calculator.desktop

make_desktop_file:
	touch Calculator.desktop
	echo "[Desktop Entry]" > Calculator.desktop 
	echo "Name=Calculator" >> Calculator.desktop
	echo "Comment='A simple calculator, for simple math problems'" >> Calculator.desktop
	echo "Exec=/usr/local/CalculatorFiles/CalculatorExecutable" >> Calculator.desktop
	echo "Icon=/usr/local/CalculatorFiles/CalculatorIcon.png" >> Calculator.desktop
	echo "Type=Application" >> Calculator.desktop
	echo "Terminal=true" >> Calculator.desktop
.PHONY: compile sudo_install uninstall sudo_uninstall make_desktop_file