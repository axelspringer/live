#!/bin/sh

# Start supervisord and services
exec /usr/bin/supervisord -n -c /etc/supervisord.conf