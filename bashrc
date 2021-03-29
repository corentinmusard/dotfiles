# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set strong umask
umask 077

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=20000

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

bold=$(tput bold)
blue="\[$bold$(tput setaf 6)\]"
orange="\[$bold$(tput setaf 202)\]"
reset="\[$(tput sgr0)\]"

export PS1="$blue\u@\h$reset:$orange\w$reset\$ "
unset bold
unset blue
unset orange
unset reset

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/git/flutter/bin"
export PATH="$PATH:$HOME/.symfony/bin"

# No arguments: `git status`
# With arguments: acts like `git`
g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}

# Sort process by swap usage
swapusage() {
    for file in /proc/*/status; do
        awk '/VmSwap|Name/{printf $2 " " $3}END{ print ""}' "$file"
    done | sort -k 2 -n -r
}

trad() {
    (cd ~/usr/doc/dev/python/translator/ && ./translator.py "$@")
}

# Write stdin to a temp file then open it with subl
# Usage: echo "text" | tosubl
tosubl() {
    TMPDIR=${TMPDIR:-/tmp} # default to /tmp if TMPDIR isn't set
    F=$(mktemp "$TMPDIR"/tosubl-XXXXXXXX)
    cat > "$F"
    subl "$F"
    sleep .3 # give subl a little time to open the file
    rm -f "$F" # file will be deleted as soon as subl closes it
}

# Download youtube playlist in $1
dl() {
    youtube-dl -x --audio-format mp3 -o '%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s' --no-check-certificate "$1"
}


# Add some alias
. ~/.bash_aliases

