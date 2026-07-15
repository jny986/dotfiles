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

currentDir=$(pwd)

[[ -f $currentDir/.zshenv ]] && source $currentDir/.zshenv
[[ -f $currentDir/.zsh/aliases.zsh ]] && source $currentDir/.zsh/aliases.zsh
[[ -f $currentDir/.zsh/functions.zsh ]] && source $currentDir/.zsh/functions.zsh
[[ -f $currentDir/.zsh/starship.zsh ]] && source $currentDir/.zsh/starship.zsh
[[ -f $currentDir/.zsh/nvm.zsh ]] && source $currentDir/.zsh/nvm.zsh
[[ -f $currentDir/.zsh/wsl2fix.zsh ]] && source $currentDir/.zsh/wsl2fix.zsh
[[ -f $currentDir/.zsh/configuration.zsh ]] && source $currentDir/.zsh/configuration.zsh

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
