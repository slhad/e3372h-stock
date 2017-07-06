#!/bin/bash

echo "Fixing execution"
chmod +x -R /HiLink/*

echo "Fixing 7zr"

mv /HiLink/linux_mbb_install/7zr /HiLink/linux_mbb_install/7zr.old
ln -s /usr/bin/7zr /HiLink/linux_mbb_install/7zr

echo "Fixing chkconfig"

ln -s /usr/sbin/sysv-rc-conf /usr/sbin/chkconfig

/HiLink/install_linux
