# load other possible environment settings
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load the default .profile

# silence mac zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

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
export EDITOR='vim'

# go
export GOPATH="$(pwd)/"
export PATH="/usr/local/opt/go/libexec/bin:$PATH"

# crystal
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# llvm
#export PATH="/usr/local/opt/llvm/bin:$PATH"

# docker
export COMPOSE_HTTP_TIMEOUT=200
export NGROK_AUTH=7vSi7ZUYnJBbzgmAu3cSh_vJ6qyVxN5FQXKKNGvvaN

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
# apt-vim
export PATH="/Users/drujensen/.vimpkg/bin:$PATH"

# alias's
alias gbr='git checkout master; git pull origin master; git fetch --all; git branch | grep -v "master" | xargs git branch -D'
alias vi='/usr/local/bin/vim'
alias be='bundle exec'
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias de='docker-compose exec puma'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# prompt
GIT_PS1_SHOWDIRTYSTATE=true
PS1="\[\033[1;36m\]\u\[\033[32m\]\[\\033[0m\]:\[\033[32m\]\w\[\033[0m\]\$(__git_ps1)\n$"

# vi mode
set -o vi
export PATH="/usr/local/sbin:$PATH"
