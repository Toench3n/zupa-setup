#!/usr/bin/env bash
echo "Okay, lets go!"

# check if brew is installed
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
FORMULAE=(
    python
    java
    openjdk
    gradle
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
    docker-compose
    postgresql@14
    solana
    stats
    go-task
    poetry
)
brew install ${FORMULAE[@]}

# Casks
echo "Formulae are installed, proceeding with casks..."
CASKS=(
    firefox
    miniconda
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
    cron
    linear-linear
    xmind
    obsidian
    tempbox
    dropzone
    bitwarden
    protonvpn
    zoom
    alt-tab
    clickup
    logitune
    grammarly-desktop
)
brew install --cask ${CASKS[@]}

echo "All done, you are good to go!"