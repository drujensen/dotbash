# git prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%n %~${vcs_info_msg_0_} %% '

# auto complete
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
autoload -Uz compinit && compinit

# path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# node
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# go
export GOPATH="/Users/djensen/workspace/go"
export PATH="/usr/local/opt/go/libexec/bin:$GOPATH/bin:$PATH"

# crystal
#export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# docker
export COMPOSE_HTTP_TIMEOUT=200
export NGROK_AUTH=7vSi7ZUYnJBbzgmAu3cSh_vJ6qyVxN5FQXKKNGvvaN

# apt-vim
export PATH="/Users/djensen/.vimpkg/bin:$PATH"

# alias's
alias gbr='git checkout master; git pull origin master; git fetch --all; git branch | grep -v "master" | xargs git branch -D'
alias vi='/usr/local/bin/vim'
alias be='bundle exec'
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias de='docker-compose exec puma'
alias dp='docker system prune -f --volumes'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

export PATH="/usr/local/sbin:$PATH"
