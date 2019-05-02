#!/bin/sh
# init
#
#
#
#
echo "Thanks for using this theme pack, packed from themes made by vinceliuice (https://github.com/vinceliuice/Mojave-gtk-theme), BelovedSomeone (i don't know who) (https://www.gnome-look.org/p/1248226/)"
echo "and USBA. (https://github.com/USBA/Cupertino-iCons). Install.sh copyrights Valio Valtokari 2019."
echo "Mac os mojave dark icon, GTK, cursor, and Plank theme + installer
      Copyright (C) 2019  Valio Valtokari and others mentioned below.
	
	
	vinceliuice        BelovedSomeone        USBA


      This program is free software: you can redistribute it and/or modify
      it under the terms of the GNU General Public License as published by
      the Free Software Foundation, either version 3 of the License, or
      (at your option) any later version.

      This program is distributed in the hope that it will be useful,
      but WITHOUT ANY WARRANTY; without even the implied warranty of
      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
      GNU General Public License for more details.

      You should have received a copy of the GNU General Public License
      along with this program.  If not, see <https://www.gnu.org/licenses/>."
if [ ! -d "/usr/share/gnome-tweaks/" ]; then
	echo "An error occurred during installation (#39236). Installing gnome-tweaks and trying again."
sudo apt install gnome-tweaks
sudo sh install.sh
	fi
 if [ ! -d "/usr/share/plank/" ]; then
	echo "An error occurred during installation (#23424). Installing plank and trying again."
sudo apt install plank
sudo sh install.sh
	fi
if [ ! -d "/usr/share/zenity/" ]; then
	echo "An error occurred during installation (#28347). Installing zenity and trying again."
sudo apt install zenity
sudo sh install.sh
        fi
mkdir /tmp/PublicInstaller353dfvxcvrthfb/'
cp icontheme.tar.xz cursortheme.tar.xz gtktheme.tar.xz planktheme.tar.xz /tmp/PublicInstaller353dfvxcvrthfb/
cd /tmp/PublicInstaller353dfvxcvrthfb/
tar xvf icontheme.tar.xz -C /usr/share/icons/
if [ ! -d "~/.icons/" ]; then
	mkdir ~/.icons
	fi
tar xvf cursortheme.xz -C ~/.icons
tar xvf planktheme.tar.xz -C /usr/share/plank/themes
tar xvf gtktheme.tar.xz -C /usr/share/themes/
cd /tmp/PublicInstaller353dfvxcvrthfb/
rm -rf *
cd /tmp
rm -rf PublicInstaller353dfvxcvrthfb
zenity --info --text="Theme installed succesfully. When you click OK, this program will shut down. It will open gnome-tweaks. " --title="Thanks for using mac os theme pack!"
zenity --info --text="Navigate to 'Appearance' -> 'Apps', 'Cursors', 'Icons' and change them to: Mojave-dark,Mac OS Cursor Set , Cuprtino-Mojave."
gnome-tweaks
exit
