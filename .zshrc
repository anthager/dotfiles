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
# source /usr/local/etc/profile.d/z.sh

SAVEHIST=30000

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# git
alias gl='git lg'
alias gs='git status'
alias gres='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'

gd() {
    git diff-tree --no-commit-id --name-only -r "$*"
}
gcpr() {
    if ! git remote show origin -n &>/dev/null; then
        echo Not a repo m8
        return 1
    fi
    repo=$(git remote show origin -n | grep "Fetch URL:" | cut -d : -f 3 | cut -d . -f 1)
    open "https://github.com/$repo/pull/new/$(git rev-parse --abbrev-ref HEAD)"
}
git-go-to-commit() {
	if ! git remote show origin -n &> /dev/null
	then
		echo Not a repo m8
		return 1
	fi
    repo=$(git remote show origin -n | grep "Fetch URL:" | cut -d : -f 3 | cut -d . -f 1)
	open "https://github.com/$repo/commit/$1"
}

# burt
export BOOL_HOME="/Users/antonhagermalm/src/bool"
source $BOOL_HOME/bool.sh

# misc
mkcd() {
    mkdir -p "$*"
    cd "$*"
}
alias c='code .'
alias hs='history | egrep'
alias f='open .'
alias airpods='open ~/Projects/scripts/ConnectToAirPods.app'
alias refresh='source ~/.zshrc'
alias py='python'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/antonhagermalm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/antonhagermalm/google-cloud-sdk/completion.zsh.inc'; fi
if [ /Users/antonhagermalm/google-cloud-sdk/bin/kubectl ]; then source <(kubectl completion zsh); fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home
export PYTHONPATH='/usr/local/bin/python3'
export PATH=~/Library/Python/3.7/bin:$PATH
export GOPATH="/Users/antonhagermalm/go"
export PATH=$PATH:$(go env GOPATH)/bin
source /Users/antonhagermalm/.ghcup/env

# # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
