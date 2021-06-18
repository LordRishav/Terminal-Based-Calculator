# Makefile for Terminal-Based-Calculator
# Project by T4rtP1ck13 (https://github/com/T4rtP1ck13)
# Makefile by Bowuigi   (https://github.com/Bowuigi)

IN=$(wildcard *.cpp)
OUT=tbc
CPPFLAGS=-std=c++17 -Os
CPP=c++
STRIP=strip
DESTDIR=/usr/local/bin
DESKTOPDIR=/usr/local/share/applications
DESKTOPFILE=Calculator.desktop

build:
	@echo "Compiling..."
	$(CPP) $(IN) $(CPPFLAGS) -o $(OUT)
	$(STRIP) $(OUT)
	@echo "Done!"
	@echo "Enjoy your calculator!"

install: build
	@echo "Installing to" $(DESTDIR) "..."
	mkdir -p $(DESTDIR)
	cp $(OUT) $(DESTDIR)
	@echo "Done!"

desktop: install
	rm -f $(DESKTOPFILE)
	@echo "Creating the desktop file..."

	echo "[Desktop Entry]" > $(DESKTOPFILE)
	echo "Name=Calculator" >> $(DESKTOPFILE)
	echo "Exec=" $(DESTDIR)/$(OUT)  >> $(DESKTOPFILE)
	echo "Terminal=true" >> $(DESKTOPFILE)
	echo "Comment='Calculator for simple math problems'" >> $(DESKTOPFILE)
	echo "Type=Application" >> $(DESKTOPFILE)
	echo "Icon=${HOME}/CalculatorFiles/CalculatorIcon.png" >> $(DESKTOPFILE)

	@echo "Copying the desktop file to" $(DESKTOPDIR) "..."
	mkdir -p $(DESKTOPDIR)
	cp $(DESKTOPFILE) $(DESKTOPDIR)
	cp $(DESKTOPFILE) $(HOME)/Desktop
	@echo "Done!"

clean:
	@echo "Cleaning..."
	rm -f $(OUT)
	@echo "Done!"

uninstall:
	@echo "Uninstalling..."
	rm -f $(DESTDIR)/$(OUT)
	rm -f $(DESKTOPDIR)/$(DESKTOPFILE)
	@echo "Done!"

.PHONY: build desktop install clean uninstall
