# load other possible environment settings
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load the default .profile

# mono
export MONO_GAC_PREFIX="/usr/local"

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# java
export JENV_ROOT="$HOME/.jenv"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# android
export ANDROID_HOME="/Users/drujensen/Library/Android/sdk"

# ruby
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# crystal
export PATH="$HOME/.crenv/bin:$PATH"
eval "$(crenv init -)"

# docker
# eval $(docker-machine env)

# alias's
alias ll='git log --oneline --graph --decorate --all'
alias vi='/usr/local/bin/vim'
alias be='bundle exec'
alias dc="docker-compose"
alias dm="docker-machine"
alias st='open -a SourceTree'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# prompt
GIT_PS1_SHOWDIRTYSTATE=true

. /usr/local/Cellar/git/2.7.2/etc/bash_completion.d/git-completion.bash
. /usr/local/Cellar/git/2.7.2/etc/bash_completion.d/git-prompt.sh

PS1="\[\033[1;36m\]\u\[\033[32m\]\[\\033[0m\]:\[\033[32m\]\w\[\033[0m\]\$(__git_ps1)\n$"

# vi mode
set -o vi

