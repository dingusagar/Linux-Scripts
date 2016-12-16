#!/bin/bash
xdotool windowminimize $(xdotool search -name LibreOffice\ Writer);
gnome-screenshot -ca 2>/dev/null;
wmctrl -ia $(xdotool search -name LibreOffice\ Writer);
xdotool key ctrl+v;