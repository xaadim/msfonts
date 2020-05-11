#!/bin/sh

set -e

cd /tmp
git clone git://github.com/xaadim/msfonts.git

echo "copying fonts to /usr/share/fonts/TTF/..."
mkdir -p /usr/share/fonts/TTF/
cp /tmp/msfonts/fonts/* /usr/share/fonts/TTF/ -rf

echo "updating all caches..."
fc-cache -vf
mkfontscale
mkfontdir

echo "done."

