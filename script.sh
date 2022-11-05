#!/bin/bash

set -e
set -x

sizes="16 32 48 128 256 512"

cp /usr/share/pixmaps/fedora-logo-sprite.svg logos/svg

for size in $sizes
do
  mkdir -p logos/png_$size
  convert -background none -resize ${size}x${size} -gravity center -extent ${size}x${size} logos/svg/fedora-logo-sprite.svg logos/png_$size/AsahiLinux_logomark.png
  # not sure we really need compression here
  #zopflipng -ym logos/png_$size/AsahiLinux_logomark.png logos/png_$size/AsahiLinux_logomark.png
done

