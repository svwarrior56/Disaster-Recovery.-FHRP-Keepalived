#!/bin/bash
HTML_PATH=/var/www/html/index.lighttpd.html

ss -tulpn | grep LISTEN | grep :80 &>/dev/null
CHECK_RESULT=$?


if [[ $CHECK_RESULT -eq 0 && -f $HTML_PATH ]]; then
	exit 0
else
	exit 1
fi
