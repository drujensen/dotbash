# load other possible environment settings
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load the default .profile

# silence mac zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# node
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ruby
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
export EDITOR='vim'

# go
export GOPATH="/User/djensen/workspace/go"
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

# git completion - git install bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
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
alias dp="docker system prune -f --volumes"
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# prompt
PS1="\[\033[1;36m\]\u\[\033[32m\]\[\\033[0m\]:\[\033[32m\]\w\[\033[0m\]\n$"

# vi mode
set -o vi
export PATH="/usr/local/sbin:$PATH"
