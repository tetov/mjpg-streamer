#!/bin/sh
useradd --system --groups video --base-dir /var/lib --create-home --shell /usr/sbin/nologin mjpg_streamer
mkdir -p /var/lib/mjpeg_streamer/history
