#!/bin/bash

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";
/usr/bin/notify-send "Eye break                       " "Take a break!\
  \
  \
  \
  " -t 22000
echo "run" >> /home/adam/run
