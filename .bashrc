# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# History Options
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Aliases
# Misc
alias vi='vim'
alias less='less -r'                          # raw control characters
alias grep='grep --color'                     # show differences in colour

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Directory and file listings
alias ls='ls -hF --color=auto --show-control-chars' # classify files in colour
alias ll='ls -l'                                    # long list

# Git
if [ -f "${HOME}/.bash_git" ]; then
    source "${HOME}/.bash_git"
fi

# Custom Prompt
PS1=$'\[\e]0;\W\a\]\[\033[0;37m\]\342\224\214\342\224\200[\[\033[0;31m\]\u@\h \[\033[0;34m\]\w\[\033[0;37m\]]\[\033[33m\]`__git_ps1`\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\076\[\033[0m\] `if [ $? = 0 ]; then echo \[\e[32m\]; else echo \[\e[31m\]; fi`\u25B2\[\033[0m\] '

