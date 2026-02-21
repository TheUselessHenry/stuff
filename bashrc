# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 is set in /etc/profile, and the default umask is defined
# in /etc/login.defs. You should not need this unless you want different
# defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022
stty -ixon
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
# ---- terminal size fixes ----
# ---- ls colors ----
alias ls='ls --color=auto'
eval "$(dircolors -b)"
export LS_COLORS="di=38;2;85;198;240:ln=38;2;220;167;197:ex=38;2;220;167;197"

# Colors
BG_PATH='\[\e[48;2;30;30;46m\]'    # off-black bg (#1e1e2e)
FG_PATH='\[\e[38;2;200;93;159m\]'
RESET='\[\e[0m\]'
HEART='♥'
# Prompt
PS1="${BG_PATH}${FG_PATH} \w ${RESET}${HEART} "

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)
