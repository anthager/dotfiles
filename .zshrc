export ZSH="$HOME/.oh-my-zsh"

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
alias git='LC_ALL=en git'
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

alias c='code .'
alias py='python'

eval export PATH="/Users/ahagermalm/.jenv/shims:${PATH}"
export JENV_SHELL=zsh
export JENV_LOADED=1
unset JAVA_HOME
source '/usr/local/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
jenv rehash 2>/dev/null
jenv refresh-plugins
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}

eval "$(pyenv init -)"

# Created by `pipx` on 2021-09-28 22:07:22
export PATH="$PATH:/Users/ahagermalm/.local/bin"

# gcloud
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

function cerebro {
	readonly CLUSTER=${1:-15staging};
	HOST="http://searches$CLUSTER-kibana.services.gew1.spotify.net:9200";
     open "http://localhost:9000/#!/overview?host=$HOST"
};



