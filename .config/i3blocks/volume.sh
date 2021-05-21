#!/usr/bin/bash

case $BLOCK_BUTTON in
    1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
esac

function vol() {
	pactl list sinks \
	| grep '^[[:space:]]Volume:'\
	| head -n $(( $SINK + 1 )) \
	| tail -n 1 \
	| sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
}

if [ "$(pacmd list-sinks | awk '/muted/ { print $2 }')" == "yes" ]; then
	echo "Silence"
	exit 0
fi;

v=$(vol)
if [ "$v" -gt "100" ]  ; then echo "  $v%";
elif [ "$v" -ge "50" ] ; then echo " $v%";
else echo " $v%"; fi;
