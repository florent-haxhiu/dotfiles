#!/bin/bash


killall -q polybar

polybar example 2>&1 | tee -a /tmp/polybar.log & disown

#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#if type "xrandr"; then
#    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); done
#        MONITOR=$m polybar --reload mybar &
#    done
#else
#    polybar --reload mybar &
#fi

echo "Polybar launched..."
