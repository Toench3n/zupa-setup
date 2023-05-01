#!/usr/bin/env bash
echo "Okay, lets go!"

# we will use homebrew to install packages
echo "I'm just looking for brew..."
if test ! $(which brew); then
    # install homwbrew if not found
    echo "Whoops, I did not find it. Let me install it for you!"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update brew
echo "Perfect! Let me just update brew!"
brew update

# Formulae
echo "Alright, we are all set! Starting to install formulae..."
PACKAGES=(
    python
    java
    openjdk
    r
    rust
    sqlite
    wget
    autojump
    cmake
    fish
    git
    git-lfs
    node
    deno
    docker
    docker-compose
    postgresql@14
)
brew install ${PACKAGES[@]}

# Casks
echo "Formulae are installed, proceeding with casks..."
CASKS=(
    firefox
    anaconda
    docker
    insomnia
    iterm2
    jetbrains-toolbox
    visual-studio-code
    secretive
    spotify
    whatsapp
    rectangle
    rstudio
    cheatsheet
    vlc
    logi-options-plus
    raycast
    warp
    todoist
    discord
    arc
)
brew install --cask ${CASKS[@]}

echo "All done, you are good to go!"