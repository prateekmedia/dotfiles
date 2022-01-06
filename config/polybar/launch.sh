#!/usr/bin/sh

dir="$HOME/.config/polybar"

launch_bar() {
  pkill polybar
  while pgrep polybar; do pkill polybar; done
  polybar -q main -c "$dir/config.ini"
}

launch_bar
