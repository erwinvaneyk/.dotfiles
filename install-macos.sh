#!/bin/bash

set -x
set -e

git submodule update --init --recursive

# Install Homebrew
if ! command -v brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Install (CLI) tooling (and override defaults)

## Languages
brew install ruby # overrides system-provided Ruby
brew install python # overrides system-provided Python
brew install go

## Terminal-related
brew install zsh # overrides system-provided zsh
brew install zsh-completions
brew install bash # overrides system-provided bash

## Editors
brew install vim # overrides system-provided vim

## Misc
brew install coreutils
brew install htop
brew install curl # overrides system-provided curl
brew install wget 
brew install fswatch
brew install kubernetes-cli

# Install (GUI) Applications
brew install --cask spotify
brew install --cask slack
brew install --cask goland
brew install --cask toggl-track
brew install --cask iterm2
brew install --cask nordvpn
brew install --cask zoom
brew install --cask docker
brew install --cask notion

# Configure terminal (zsh)

# Folder structure
mkdir ~/projects # For all currently active projects. Each should be a git repository
