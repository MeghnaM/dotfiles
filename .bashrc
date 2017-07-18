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

# 
alias tux="ssh mm3886@tux"
alias scarlet="ssh scarlet@sonorous"
alias server="ssh root@sonorous"
alias texme="bash /Users/MeghnaM/Documents/Drexel/texme.bash $1 $2"
alias l="ls -CF"
alias "emacs"="/usr/local/opt/emacs/bin/emacs"
alias "jy"="cd ~/Documents/Drexel/JuniorYear/"

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
alias ll="ls -l"
alias la="ls -a"

# You can type 'lh' at the command line.  Try it, see what happens.
function lh
{
	ls -ot "${1:-.}" | head
}

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
FMAG="\[\033[35m\]" # foreground magenta
FGRN="\[\033[1;32m\]" # foreground green

# Define prompt
export PS1="$FGRN\u$RS@\h[\e[1;33m\w\e[0m]\e[1;32m»\e[0m"

LS_COLORS=$LS_COLORS:'di=0;31:ln=0;31:' ; export LS_COLORS
# http://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
