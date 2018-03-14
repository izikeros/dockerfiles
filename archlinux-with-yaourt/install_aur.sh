#!/usr/bin/env bash

# get package name
if [ $# -eq 0 ]
then
	echo 'package name ?'
	read $pkgname
else
	pkgname=$1
fi


# download and uncompress package
sudo chown user -R /tmp
cd /tmp/install_aur
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/$pkgname.tar.gz
tar zxvf $pkgname.tar.gz


# install package
cd $pkgname
makepkg -s
sudo pacman -U --noconfirm *.pkg.tar.xz


# clean
rm -r /tmp/$pkgname*

