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

### nodenv, rbenv, pyenv, goenv
```
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/HEAD/bin/nodenv-installer | bash

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

curl https://pyenv.run | bash

git clone https://github.com/go-nv/goenv.git ~/.goenv
