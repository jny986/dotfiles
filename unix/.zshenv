# ENV Vars
# ----
#

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="$PATH:/Users/josh.young/.composer/vendor/bin"

# General
export EDITOR=code
export GIT_EDITOR=code
export ARTISAN_OPEN_ON_MAKE_EDITOR=code
export FZF_DEFAULT_COMMAND='ag -u -g ""'
export FZF_DEFAULT_OPTS='
--border=rounded
--padding=0,1
--margin=4,10
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef,gutter:-1,border:#1f2335
'

# Herd Lite
export PATH="$HOME/.config/herd-lite/bin:$PATH"