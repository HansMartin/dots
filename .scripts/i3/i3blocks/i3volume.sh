#!/bin/sh

case $BLOCK_BUTTON in
    1) amixer -D pulse sset Master toggle; ;;
    2) ;;
esac

state=$(amixer -D pulse sget Master | awk '/Front Left:/ {print $6}' | sed -r 's/\[(.*)\]/\1/g')

if [ "$state" = "off" ] ;then
    echo "mute"
else
    echo $(amixer -D pulse sget Master | awk '/Front Left:/ {print $5}' | sed -r 's/\[(.*)\]/\1/g')
fi

