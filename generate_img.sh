#!/bin/bash
#
# script to generate the CCU addon package.

# generate tempdir
mkdir -p tmp
rm -rf tmp/*

# copy all relevant stuff
cp -a update_script tmp/
cp -a watchdog tmp/
cp -a rc.d tmp/
cp -a www tmp/
cp -a VERSION tmp/www/

# generate archive
cd tmp
tar --owner=root --group=root --exclude=.DS_Store -czvf ../hm-watchdog-$(cat ../VERSION).tar.gz *
cd ..
rm -rf tmp
