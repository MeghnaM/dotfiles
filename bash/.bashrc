# User specific aliases and functions

# Specify that ^D won't log you out.
set -o ignoreeof 

# Don't let redirection clobber a file
set -o noclobber

# Make vi the command-line editor
# Comment out to use emacs mode (the default)
set -o vi

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

nc="$(tput -Txterm-256color colors)"
if (( nc >= 8 )) ; then
	alias ls="ls -G"
fi

# Aliases for popular commands
alias r="fc -s"
alias h="history"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ll="ls -lt"
alias la="ls -a"

# You can type 'lh' at the command line.  Try it, see what happens.
function lh
{
	ls -ot "${1:-.}" | head
}

# For pkg_config to be able to find opencv
export PKG_CONFIG_PATH="/usr/local/opt/opencv@2/lib/pkgconfig"

## VARIABLES
# set prompt, though maybe already done in /etc/bashrc
#		see man or info pages for special characters (\u, etc.)
# export PS1="\u@\h \W> "

# things you don't want stored in your history list (consecutive
# duplicates, ls, bg, fg, exit)
export HISTIGNORE="&:l:[bf]g:exit"

# ANSI color codes
RS="\[\033[0m\]"    # reset
FRED="\[\033[31m\]" # foreground red
LRED="\[\033[91m\]" # foreground magenta
FGRN="\[\033[0;32m\]" # foreground green
BLUE="\[\033[1;49;96m\]"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
} 

# Define prompt
export PS1="$LRED\u$FGRN\w\[\033[33m\]\$(parse_git_branch)$BLUE ☞ $RS" 

LS_COLORS=$LS_COLORS:'di=0;31:ln=0;31:' ; export LS_COLORS
# http://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
