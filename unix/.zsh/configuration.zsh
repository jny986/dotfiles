# Configuration
# ----
#

typeset -U path cdpath fpath
path=(
    $HOME/.local/bin
    $HOME/.config/composer/vendor/bin
    $HOME/.go/bin
    $HOME/.cargo/bin
    ./vendor/bin
    $path
)

setopt auto_cd

zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format %d
zstyle ':completion:*:descriptions' format %B%d%b
zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
    'local-directories named-directories'
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'header' yes

unsetopt sharehistory

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"