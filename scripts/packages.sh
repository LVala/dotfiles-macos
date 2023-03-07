#/bin/sh

brew tap homebrew/cask-fonts
brew tap koekeishiya/formulae

brew install fish
brew install fisher
brew install htop
brew install neovim
brew install skhd
brew install yabai
brew install neofetch
brew install ripgrep  # for telescope.nvim

brew install ffmpeg
brew install srtp
brew install clang-format
brew install asdf
brew install openssl@1.1
brew install autoconf
brew install wxwidgets
brew install libxlt
brew install fop

cask install --cask alacritty
cask install --cask discord
cask install --cask firefox
cask install --cask font-jetbrainsmono-nerd-font
cask install --cask google-chrome
cask install --cask hex-fiend
cask install --cask slack
cask install --cask spotify
cask install --cask vlc
cask install --cask docker

asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang latest
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir latest
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust latest
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
adsf install nodejs latest

fisher update

