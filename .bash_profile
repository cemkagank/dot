#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x dwm || exec startx
fi


