nah() {
    git reset --hard

    if [[ $1 == "-f" ]]; then
        git clean -df
    fi
}

de () {
    echo "docker compose exec -it $1 ${2-bash}"
    docker compose exec -it $1 ${2-bash}
}

open () {
    xdg-open $* > /dev/null 2>&1
}

composer-link() {
    composer config minimum-stability dev
    local package=`echo $1 | sed -nr 's/.*\/([^\/]+)$/\1/p'`
    composer config "repositories.$package" '{"type": "path", "url": "'$1'"}'
}

composer-github() {
    composer config minimum-stability dev
    local package=`echo $1 | sed -nr 's/.*\/(.*)\.git/\1/p'`
    composer config "repositories.$package" vcs $1
}

