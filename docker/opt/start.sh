#!/bin/bash

echo "Starting named..."
exec /usr/sbin/named -u named -c /etc/named.conf -f

