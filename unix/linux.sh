#!/bin/env bash

RED='\033[0;31m'
BLUE='\033[0;34m'
CLEAR='\033[0m'

function error {
    echo -e "${RED}$1${CLEAR}"
}

function info {
    echo -e "${BLUE}$1${CLEAR}"
}

SOURCEPATH=$(pwd)
INSTALLPATH=$SOURCEPATH/install-scripts/linux

info "Setting up dev env"

if ! command -v zsh 2>&1 > /dev/null ; then
    info "Installing Zsh"

    if ! sudo apt install -y zsh ; then
        error "Failed to install Zsh"
        exit 1
    fi

fi


if [ ! -d ~/.oh-my-zsh ] ; then
    info "Installing Oh-My-Zsh"

    if ! sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ; then
        error "Failed to install Oh-My-Zsh"
        exit 1
    fi
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/artisan ] ; then
    info "Installing Zsh Artisan"
    if ! git clone https://github.com/jessarcher/zsh-artisan.git ~/.oh-my-zsh/custom/plugins/artisan ; then
        error "Failed to install Zsh Artisan"
        exit 1
    fi  
fi

if ! command -v starship 2>&1 > /dev/null ; then

    info "Installing Starship"

    if [ ! -d ~/.local/share/font ]; then 
        mkdir -p ~/.local/share/font
    fi

    if [ ! -f ~/.local/share/font/HackNerdFont-Bold.ttf ]; then
        info "Installing HackNerdFont"

        if ! cp $SOURCEPATH/hack/* ~/.local/share/font/ ; then
            error "Failed to install HackNerdFont"
            exit 1
        fi
    fi

    if ! curl -sS https://starship.rs/install.sh -o /tmp/starship-install.sh ; then
        error "Failed to download Starship installer"
        exit 1
    fi

    if ! chmod +x /tmp/starship-install.sh && /tmp/starship-install.sh -y ; then
        error "Failed to install Starship"
        exit 1
    fi

fi

if ! command -v op 2>&1 > /dev/null ; then

    info "Installing 1Password"

    if ! curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
    sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" | \
    sudo tee /etc/apt/sources.list.d/1password.list && \
    sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && \
    curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | \
    sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && \
    sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && \
    curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
    sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && \
    sudo apt update && sudo apt install 1password-cli ; then
        error "Failed ot install 1Password"
        exit 1
    fi

fi

if ! command -v eza 2>&1 > /dev/null ; then
    info "Installing Eza"

    if ! sudo apt install -y cargo ; then
        error "Failed to install Cargo"
        exit 1
    fi

    if ! cargo install eza ; then
        error "Failed to install exa"
        exit 1
    fi

fi

if ! command -v eza 2>&1 > /dev/null ; then
    info "Installing fzf"

    if ! sudo apt install -y fzf ; then
        error "Failed to install fzf"
        exit 1
    fi

fi

if ! command -v eza 2>&1 > /dev/null ; then
    info "Installing NVM"

    if ! curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash ; then
        error "Failed to install nvm"
        exit 1
    fi

fi

info "Setting up config files"

if ! "$INSTALLPATH/link-config.sh" ; then
    error "Failed to setup config files"
    exit 1
fi

if ! command -v php 2>&1 > /dev/null ; then
    info "Installing PHP"

    if ! /bin/bash -c "$(curl -fsSL https://php.new/install/linux)" ; then
        error "Failed to install Laravel Script"
        exit 1
    fi

else 
    if ! command -v composer 2>&1 > /dev/null ; then
        if ! sudo apt install -y composer ; then 
            error "Failed to install Composer"
            exit 1
        fi
    fi

    if ! composer global require laravel/installer ; then
        error "Failed to install Laravel Installer"
        exit 1
    fi
fi

info "Completed Setup"