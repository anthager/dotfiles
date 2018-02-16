
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# mkdir, cd into it
mkcd () {
mkdir -p "$*"
cd "$*"
}

#git commands
gc () {
  git commit -m "$*"
}
gco() {
  git checkout "$*"
}
alias cdp='cd ~/projects/'
alias gp='git push'
alias ga='git add .'
alias gs='git status'

makeDockFaster() {
  defaults write com.apple.dock autohide-time-modifier -int 0 && Killall Dock
} 

makeDockNormal() {
 defaults delete com.apple.dock autohide-time-modifier && Killall Dock
}

get(){
  ls | grep "$*"
}

alias c='code .'
alias ..='cd ..'
alias f='open .'
alias ls='ls -a'
alias runsql='/Library/PostgreSQL/10/scripts/runpsql.sh'
alias cdic='cd Projects/IC/frontend'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
