#!/bin/sh

# Xcode utils are automatically installed together with Homebrew
# xcode-select --install

echo "Installing Homebrew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Downloading scripts and config files..."

[ ! -d "$HOME/dotfiles" ] && git clone git@github.com:LVala/dotfiles-macos.git $HOME/dotfiles
cd $HOME/dotfiles/scripts

echo "Installing Brew Formulae..."

brew bundle install --file ./Brewfile

echo "Changing MacOS defaults..."

source ./defaults.sh

echo "Linking config files..."

source ./link_config.sh

echo "Starting services..."

brew services start skhd
brew services start yabai

