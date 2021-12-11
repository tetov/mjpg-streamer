#!/bin/sh
useradd --system --ingroup video --base-dir /var/lib --create-home --shell /usr/sbin/nologin mjpg_streamer
mkdir -p /var/lib/mjpeg_streamer/history
