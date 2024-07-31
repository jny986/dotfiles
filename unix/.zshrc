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
    npm
    composer
    docker
    docker-compose
    git
    git-auto-fetch
    z
    1password
    vscode
    direnv
    starship
    fzf
    eza
)

source $ZSH/oh-my-zsh.sh