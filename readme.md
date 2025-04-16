# Setup system

## Install
```
git clone git@github.com:drujensen/dotbash.git .bash
ln -sf .bash/gitconfig .gitconfig
ln -sf .bash/bash_profile .bash_profile
```

## Mac
```
ln -sf .bash/mac/bashrc .bashrc
```

## Linux
```
ln -sf .bash/linux/bashrc .bashrc
```

### nodenv, rbenv, pyenv, goenv, swiftenv
```
# needed libraries
sudo apt install git curl wget autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libnss3-dev libreadline-dev libsqlite3-dev libbz2-dev liblzma-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev libpq-dev ruby-build

curl -fsSL https://github.com/nodenv/nodenv-installer/raw/HEAD/bin/nodenv-installer | bash

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

curl https://pyenv.run | bash

git clone https://github.com/go-nv/goenv.git ~/.goenv

git clone https://github.com/kylef/swiftenv.git ~/.swiftenv
