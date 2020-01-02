#!/bin/bash

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";

# Only send notification if the screen isn't locked
logged_in=$(loginctl show-user adam --property=IdleHint)
if [[ "$logged_in" == "IdleHint=yes" ]]; then
  exit 0
fi

/usr/bin/notify-send "Eye break                       " "Take a break!\
  \
  \
  \
  " -t 22000
