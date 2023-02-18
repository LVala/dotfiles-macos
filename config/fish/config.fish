fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# paths to OpenSSL may differ between versions
set -gx KERL_CONFIGURE_OPTIONS "--without-javac --with-ssl=$(brew --prefix openssl@1.1)"
set -gx LDFLAGS "-L/opt/homebrew/Cellar/openssl@1.1/1.1.1t/lib"
set -gx CFLAGS "-I/opt/homebrew/Cellar/openssl@1.1/1.1.1t/include"
set -gx CPPFLAGS "-I/opt/homebrew/Cellar/openssl@1.1/1.1.1t/include"
set -gx C_INCLUDE_PATH "/opt/homebrew/Cellar/libnice/0.1.18/include:/opt/homebrew/Cellar/opus/1.3.1/include:/opt/homebrew/Cellar/openssl@1.1/1.1.1t/include"
set -gx LIBRARY_PATH "/opt/homebrew/Cellar/opus/1.3.1/lib"
set -gx PKG_CONFIG_PATH "/opt/homebrew/Cellar/openssl@1.1/1.1.1t/lib/pkgconfig/"

source /opt/homebrew/opt/asdf/libexec/asdf.fish

alias clear='printf "\033c"'
alias ls='ls --color=auto -Fh'
alias ll='ls -la'
alias v='nvim'

if status is-interactive
    set fish_greeting 
    set_theme
    # TODO prompt
end

