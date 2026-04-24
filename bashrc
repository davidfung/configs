#--------------------------------------------------------------------------
# adapted from jeroen janssens
# Quickly navigate your filesystem from the command-line
export MARKPATH=$HOME/.marks
function jump {
    if [ $# -eq 0 ]; then
        marks
    else
        cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
    fi
}
function mark {
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark {
    rm "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
_completemarks() {
  local curw=${COMP_WORDS[COMP_CWORD]}
  local wordlist=$(find $MARKPATH -type l -printf "%f\n")
  COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
  return 0
}
complete -F _completemarks jump unmark
alias j=jump

#--------------------------------------------------------------------------
# set up user paths and env variables
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#--------------------------------------------------------------------------
# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

#--------------------------------------------------------------------------
# git - show branch name in command prompt in red
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[31m\]$(parse_git_branch)\[\033[00m\]$ '

#--------------------------------------------------------------------------
# export
export EDITOR=vim

# -------------------------------------------------------------------------
# End
