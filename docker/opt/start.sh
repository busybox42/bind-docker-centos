#!/bin/bash

/usr/sbin/named -u named -c /etc/named.conf -f

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
