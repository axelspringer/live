#!/bin/bash

# MPEG-DASH
if [ ! -d "/tmp/dash" ]; then
  mkdir -p /tmp/media/dash
fi

# HLS
if [ ! -d "/tmp/hls" ]; then
  mkdir -p /tmp/media/dash
fi

# Start supervisord and services
exec /usr/bin/supervisord -n -c /etc/supervisord.conf