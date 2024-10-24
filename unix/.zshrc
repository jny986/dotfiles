#
#      _____  __    __  __      __  ______    ______    ______        
#     /     |/  \  /  |/  \    /  |/      \  /      \  /      \       
#     $$$$$ |$$  \ $$ |$$  \  /$$//$$$$$$  |/$$$$$$  |/$$$$$$  |      
#        $$ |$$$  \$$ | $$  \/$$/ $$ \__$$ |$$ \__$$ |$$ \__$$/       
#   __   $$ |$$$$  $$ |  $$  $$/  $$    $$ |$$    $$< $$      \       
#  /  |  $$ |$$ $$ $$ |   $$$$/    $$$$$$$ | $$$$$$  |$$$$$$$  |      
#  $$ \__$$ |$$ |$$$$ |    $$ |   /  \__$$ |$$ \__$$ |$$ \__$$ |      
#  $$    $$/ $$ | $$$ |    $$ |   $$    $$/ $$    $$/ $$    $$/       
#   $$$$$$/  $$/   $$/     $$/     $$$$$$/   $$$$$$/   $$$$$$/        
#
# Personal terminal configuration of Josh young <jny986@gmail.com>

#--------------------------------------------------------------------------
# Oh My Zsh
#--------------------------------------------------------------------------

export ZSH="$HOME/.oh-my-zsh"

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/configuration.zsh ]] && source ~/.zsh/configuration.zsh

plugins=(
    artisan
    composer
    z
    1password
    direnv
    starship
    fzf
    eza
)

source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/jny986/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/jny986/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
