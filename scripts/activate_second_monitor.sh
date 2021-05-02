#!/bin/bash

extra_monitor=$(xrandr --query | grep 'HDMI1')

if [[ $extra_monitor = *connected* ]]; then
    xrandr --output HDMI1 --auto --right-of eDP1
fi
