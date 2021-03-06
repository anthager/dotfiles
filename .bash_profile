
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/path.bash.inc' ]; then source '/Users/antonhagermalm/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/antonhagermalm/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/antonhagermalm/google-cloud-sdk/completion.bash.inc'; fi


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

source ~/.bashrc
source ~/.aliases
source ~/.bashgit
