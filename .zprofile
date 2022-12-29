export PATH=~/bin:$PATH
export PATH=/home/root99/bin/appimages:$PATH
export PATH=/home/root99/bin/rofi-scripts:$PATH
export PATH=/home/root99/bin/scripts:$PATH
export PATH=/home/root99/bin/themes:$PATH
export PATH=~/bin/CustomScripts:$PATH
export PATH=~/bin/statusbar-luke:$PATH
export PATH=~/bin/mystatus:$PATH
export PATH=/home/root99/bin/scripts/:$PATH
export PATH=$HOME/bin/tmp-entertainement/:$PATH
export PATH=$HOME/.config/npm-global:$PATH
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export GNUPGHOME=$HOME/.config/GNU/
export PASSWORD_STORE_DIR=$HOME/.config/pass
#export VSCODE_PORTABLE= $XDG_CONFIG_HOME/vscode
# export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
# export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
# export XAUTHORITY=$XDG_CONFIG_HOME/Xauthority # this will break some dm
# export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
# export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
# export CHROME_EXECUTABLE="/usr/bin/brave"
#export QT_QPA_PLATFORMTHEME=qt5ct
#export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/.vim/vimrc" | source $MYVIMRC'


# see https://unix.stackexchange.com/a/295652/332452
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# see https://wiki.archlinux.org/title/GNOME/Keyring#xinitrc
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# see https://github.com/NixOS/nixpkgs/issues/14966#issuecomment-520083836
# mkdir -p "$HOME"/.local/share/keyrings
