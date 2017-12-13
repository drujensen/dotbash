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

# go
export GOPATH="$(pwd)/"
export PATH="/usr/local/opt/go/libexec/bin:$PATH"

# crystal
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# docker
# eval $(docker-machine env)

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# alias's
alias gbr='git pull origin master; git fetch --all; git branch | grep -v "master" | xargs git branch -D'
alias vi='/usr/local/bin/vim'
alias be='bundle exec'
alias dc="docker-compose"
alias dm="docker-machine"
alias st='open -a SourceTree'
alias de='docker exec -it catalyst_puma_1'
alias ng="npm list -g --depth=0 2>/dev/null"
alias nl="npm list --depth=0 2>/dev/null"
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# prompt
GIT_PS1_SHOWDIRTYSTATE=true

PS1="\[\033[1;36m\]\u\[\033[32m\]\[\\033[0m\]:\[\033[32m\]\w\[\033[0m\]\$(__git_ps1)\n$"

# vi mode
set -o vi

export DISPLAY_MAC=`ifconfig en0 | grep "inet " | cut -d " " -f2`:0

function startx() {
    if [ -z "$(ps -ef|grep XQuartz|grep -v grep)" ] ; then
        open -a XQuartz
        socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
    fi
}
