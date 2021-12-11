#!/bin/bash

rm -rf _pkg
install -Dm755 mjpg_streamer _pkg/usr/bin/mjpg_streamer
install -d _pkg/usr/lib
install *.so _pkg/usr/lib
install -D mjpg_streamer@.service _pkg/lib/systemd/system/mjpg_streamer@.service
mkdir -p _pkg/usr/share/mjpg_streamer
cp -r www _pkg/usr/share/mjpg_streamer/www

fpm --output-type deb --input-type dir --chdir _pkg --after-install postinstall.sh --name mjpg-streamer --version $VERSION --iteration $REVISION --deb-compression xz --url https://github.com/tetov/mjpg_streamer --description "mjpg-streamer is a command line application that copies JPEG frames from one or more input plugins to multiple output plugins." --maintainer "Anton Tetov <anton@tetov.se>" --license GPLv2
