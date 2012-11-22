#!/bin/sh
echo "cloning font repository..."

cd /tmp
git clone git://github.com/caarlos0/msfonts.git

echo "copying fonts to /usr/share/fonts/TTF/..."
mkdir -p /usr/share/fonts/TTF/
cp msfonts/fonts /usr/share/fonts/TTF/

echo "updating all caches..."
fc-cache -vf
mkfontscale
mkfontdir

echo "done."

