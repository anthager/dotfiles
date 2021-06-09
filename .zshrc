export ZSH="/Users/antonhagermalm/.oh-my-zsh"

plugins=(
    # zsh-syntax-highlighting
    # zsh-autosuggestions
)

export SAVEHIST=1000000
export HISTSIZE=1000000

ZSH_THEME="theunraveler"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"

source $ZSH/oh-my-zsh.sh

# alternitive formulas so brew wont symlinc them 
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"


# git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset - %C(yellow)%cn:%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=local"
alias gs='git status'
# git reset to origin
alias gro='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
# git latest merge
alias glm="glog | egrep "Merge" | head -1 | awk '{print \$2}'"

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
    if ! git remote show origin -n &>/dev/null; then
        echo Not a repo m8
        return 1
    fi
    repo=$(git remote show origin -n | grep "Fetch URL:" | cut -d : -f 3 | cut -d . -f 1)
    open "https://github.com/$repo/commit/$1"
}

# misc
mkcd() {
    mkdir -p "$*"
    cd "$*"
}

papper() {
    read str
    node -e "console.log(process.argv[1].replace(/\s/g, '-').toLowerCase())" $str
}

alias c='code .'
alias py='python'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/antonhagermalm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/antonhagermalm/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
