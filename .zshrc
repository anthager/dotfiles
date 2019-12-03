# ZSH shit

export ZSH=/Users/antonhagermalm/.oh-my-zsh
ZSH_THEME="theunraveler"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
# inactivating autosuggestions might fuck you up
plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
source /usr/local/etc/profile.d/z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# git
alias gchh='git checkout h'
alias gcm='git checkout master'
alias gpl='git pull'
alias gl='git lg'
alias gp='git push'
alias gs='git status'
alias ga='git add .'
alias hs='history | egrep'

gc() {
    git commit -m "$*"
}
gch() {
    git checkout "$*"
}
gcn() {
    git checkout -b "$*"
}
gd() {
    git diff-tree --no-commit-id --name-only -r "$*"
}
gcpr() {
    if ! git remote show origin -n &>/dev/null; then
        echo Not a repo m8
        return 1
    fi
    open "https://github.com/$(git remote show origin -n | grep "Fetch URL:" | cut -d : -f 3 | cut -d . -f 1)/pull/new/$(git rev-parse --abbrev-ref HEAD)"
}

# burt
export AWS_DEFAULT_PROFILE=burt
export BOOL_HOME="/Users/antonhagermalm/src/bool"
source $BOOL_HOME/bool.sh
export AWS_ACCESS_KEY_ID=AKIAWUL4PJNQJV63CEAT

# misc
mkcd() {
    mkdir -p "$*"
    cd "$*"
}
alias c='code .'
alias f='open .'
alias airpods='open ~/Projects/scripts/ConnectToAirPods.app'
alias refresh='source ~/.zshrc'
alias py='python'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/antonhagermalm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/antonhagermalm/google-cloud-sdk/completion.zsh.inc'; fi
if [ /Users/antonhagermalm/google-cloud-sdk/bin/kubectl ]; then source <(kubectl completion zsh); fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
export PYTHONPATH='/usr/local/bin/python3'
export PATH=~/Library/Python/3.7/bin:$PATH
export GOPATH="/Users/antonhagermalm/go"
export PATH=$PATH:$(go env GOPATH)/bin
source /Users/antonhagermalm/.ghcup/env

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/antonhagermalm/Projects/MakeChaboOpenAgain/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/antonhagermalm/Projects/MakeChaboOpenAgain/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/antonhagermalm/Projects/MakeChaboOpenAgain/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/antonhagermalm/Projects/MakeChaboOpenAgain/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/antonhagermalm/Projects/MakeChaboOpenAgain/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/antonhagermalm/Projects/MakeChaboOpenAgain/serverless/node_modules/tabtab/.completions/slss.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
