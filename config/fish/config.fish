fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

set -gx C_INCLUDE_PATH /opt/homebrew/Cellar/libnice/0.1.18/include:/opt/homebrew/Cellar/opus/1.3.1/include:/opt/homebrew/Cellar/openssl@1.1/1.1.1l_1/include
set -gx LIBRARY_PATH /opt/homebrew/Cellar/opus/1.3.1/lib
set -gx PKG_CONFIG_PATH /opt/homebrew/Cellar/openssl@1.1/1.1.1l_1/lib/pkgconfig/

if status is-interactive
    set_theme
    # TODO prompt
end

alias ls='ls --color=auto -Fh'
alias ll='ls -la'
alias v="nvim"

