# Aliases
# ----
#

# Laravel
alias sail='[ -f sail ] && sail || vendor/bin/sail'
alias a="artisan"
alias tinker="artisan tinker"
alias seed="artisan db:seed"
alias serve="artisan serve"
alias mfs="artisan migrate:fresh --seed"
alias sqlit="sed -e 's/\(DB_.*\)/# \\1/g' -e 's/# \(DB_CONNECTION=\).*/\\1sqlite/g' -i .env"
alias lenv="cp -n .env.example .env && (grep '^APP_KEY=.\+' .env > /dev/null || artisan key:generate)"
alias laravel-setup="composer install && lenv && sqlit && artisan migrate --force --seed"

# Git
alias g="git"
alias gs="git s"
alias co="git checkout"
alias main='git checkout $([ `git rev-parse --quiet --verify master` ] && echo "master" || echo "main")'
alias wip='git commit -m "WIP"'

# Docker
alias d="docker"
alias dc="docker compose"
alias dd="docker compose down"
alias dup="docker compose up -d"
alias dre="docker compose down && docker compose up -d"