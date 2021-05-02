#!/bin/bash

monitor_type="HDMI1"

extra_monitor=$(xrandr --query | grep $monitor_type)

if [[ $extra_monitor = *connected* ]]; then
    echo "$monitor_type"
    xrandr --output HDMI1 --auto --right-of eDP1
fi
