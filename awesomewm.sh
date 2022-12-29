#!/bin/sh

userresources=$HOME/.config/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
# NOTE: needed in manjaro for setting wallpaper through script
export DISPLAY=":0"
xhost +
#session=${1:bspwm}
#case $session in
    #i3|i3wm ) exec i3;;
    #xmonad ) exec xmonad;;
    #bspwm ) exec bspwm;;
#esac
#exec /usr/bin/dbus-launch &
picom --experimental-backends --blur-method dual_kawase --backend glx &
nitrogen --restore &
# /home/root99/bin/themes/wallheaven.sh &
# dwmblocks &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/polkit-kde-authentication-agent-1 &
sxhkd -c /home/root99/.config/sxhkd/sxhkdrc_dwm &
greenclip daemon &
xset s 180 120
xss-lock --transfer-sleep-lock -- lock-suspend.sh &
xautolock -time 15 -locker "systemctl suspend" -detectsleep &
nm-applet &
dunst &
#xfce4-power-manger &
xsetroot -cursor_name left_ptr &
#xrandr --dpi 108
# xmodmap /home/root99/.config/.Xmodmap
# while true; do
#     # Log stderror to a file
#     dwm 2> ~/.config/.dwm.log
#     # No error logging
#     dwm >/dev/null 2>&1
# done

#exec qtile start
#exec xmonad
#sudo mount /dev/sda6 arch-old
# exec  ~/Downloads/i3-4.20_features/build/i3
# exec i3
# exec awesome
exec /usr/bin/awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
# exec bspwm
# exec dbus-launch leftwm
