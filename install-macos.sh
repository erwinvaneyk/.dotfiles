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
brew install cheat
brew install fswatch

# Install (GUI) Applications
brew cask install spotify
brew cask install slack
brew cask install goland


# Configure terminal (zsh)

# Folder structure
mkdir ~/projects # For all currently active projects. Each should be a git repository
