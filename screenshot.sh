#!/bin/bash
winId=$(xdotool getactivewindow);
xdotool windowminimize $winId;
gnome-screenshot -ca 2>/dev/null;
wmctrl -ia $winId;
xdotool key ctrl+v;
