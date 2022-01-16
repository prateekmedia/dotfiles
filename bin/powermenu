#! /bin/sh

poweroff="  Power Off"
restart="  Restart"
lock="  Lock"
logout="  Log Out"

chosen=$(printf "$poweroff\n$restart\n$lock\n$logout" | rofi -dmenu -i -p "Power options")
export SUDO_ASKPASS="$HOME/.local/bin/askpass"
case "$chosen" in
	$poweroff) poweroff || sudo -A poweroff ;;
	$restart) reboot || sudo -A reboot ;;
	$lock) sh $HOME/.local/bin/lock ;;
	$logout) bspc quit ;;
	*) exit 1 ;;
esac
