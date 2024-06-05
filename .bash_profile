#
# ~/.bash_profile
#

PATH="$PATH:/home/cem/.scripts/"
[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x dwm || exec startx
fi


