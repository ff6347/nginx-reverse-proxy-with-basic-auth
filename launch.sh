#!/bin/sh
htpasswd -b -c /etc/nginx/.htpasswd "$USER" "$PW"

nginx -g "daemon off;"