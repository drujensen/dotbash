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

sudo apt-get install -y \
            apt-transport-https \
            autoconf \
            automake \
            binutils \
            bison \
            bubblewrap \
            build-essential \
            ca-certificates \
            curl \
            file \
            git \
            gnupg \
            gnupg2 \
            jq \
            locales \
            pkg-config \
            re2c \
            software-properties-common \
            tar \
            tree \
            time \
            tzdata \
            unzip \
            vim \
            wget \
            xorg-dev \
            llvm \
            clang \
            libbz2-dev \
            libffi-dev \
            liblzma-dev \
            libncurses5-dev \
            libreadline-dev \
            libssl-dev \
            libyaml-dev \
            libsqlite3-dev \
            libxml2-dev \
            libxmlsec1-dev \
            libc6-dev \
            libz3-dev \
            libgd-dev \
            libpcre2-dev \
            libpcre3-dev \
            libonig-dev \
            libpq-dev \
            libedit-dev \
            libgdbm-dev \
            libcurl4-openssl-dev \
            libunistring-dev \
            libgc-dev \
            libpng-dev \
            libxslt-dev \
            libgmp3-dev \
            libtool \
            libncurses-dev \
            libssh-dev \
            libzip-dev \
            libevent-dev \
            libicu-dev \
            libglu1-mesa-dev \
            unixodbc-dev \
            zlib1g-dev \
            libsdl2-dev \
            libgl1-mesa-dev \
            libgmp-dev \
            libfontconfig1-dev

curl -fsSL https://github.com/nodenv/nodenv-installer/raw/HEAD/bin/nodenv-installer | bash

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

curl https://pyenv.run | bash

git clone https://github.com/go-nv/goenv.git ~/.goenv

git clone https://github.com/kylef/swiftenv.git ~/.swiftenv
