#!/bin/bash

workplace=$1
on_off=$2

case $workplace in
  home)

    case $on_off in
      on)
        xrandr --output DisplayPort-1 --mode 2560x1440 --rate 144 --left-of eDP
        ;;
      off)
        xrandr --output DisplayPort-1 --off
        ;;
      *)
        echo "What? $on_off"
        ;;
    esac
    ;;
  work)

    case $on_off in
      on)
        xrandr --output DisplayPort-1 --auto --above eDP
        ;;
      off)
        xrandr --output DisplayPort-1 --off
        ;;
      *)
        echo "What? $on_off"
        ;;
    esac
    ;;
  *)
     echo "mons.sh [home|work] [on|off]"
     ;;
esac
