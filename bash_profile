# load other possible environment settings
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load the default .profile

# silence mac zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# default PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# set editor
export EDITOR='vim'
set -o vi

# brew install
eval "$(/opt/homebrew/bin/brew shellenv)"

# llvm
export PATH="$(brew --prefix llvm)/bin:${PATH}"

# carbon explorer
export PATH="$HOME/.carbon/bin:$PATH"

# node
export NVM_DIR="$HOME/.nvm"
  [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ruby
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

#python
export PATH="$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"

# go
export GOPATH="/Users/drujensen/.go"
export PATH="$(brew --prefix)/opt/go/libexec/bin:$GOPATH/bin:$PATH"

# crystal
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/opt/openssl/lib"

# rust environment
. "$HOME/.cargo/env"

# swift environment
export PATH="$HOME/.mint/bin:$PATH"

# apio and gtkwave
export PATH=/Applications/gtkwave.app/Contents/Resources/bin/:$PATH

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# git completion hack
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# alias's
alias gbr='git checkout master; git pull origin master; git fetch --all; git branch | grep -v "master" | xargs git branch -D'
alias gbm='git checkout main; git pull origin main; git fetch --all; git branch | grep -v "main" | xargs git branch -D'
alias vi='$(brew --prefix)/bin/vim'
alias be='bundle exec'
alias d="docker"
alias dc="docker compose"
alias dp="docker system prune -f --volumes"
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
alias xcode='xed'
alias idea='open -na "IntelliJ IDEA CE.app" --args'
alias intel="env /usr/bin/arch -x86_64 /bin/bash -l"
alias arm="env /usr/bin/arch -arm64 /bin/bash -l"

# prompt
PS1="\[\033[1;36m\]\u\[\033[32m\]\[\\033[0m\]:\[\033[32m\]\w\[\033[0m\]\n$"
