#!/bin/zsh

. "$HOME/.zshrc"


/usr/local/bin/pueued --daemonize

/usr/local/bin/pueue add -- /usr/local/bin/brew update
/usr/local/bin/pueue add -- /usr/local/bin/brew upgrade
/usr/local/bin/pueue add -- /usr/local/bin/brew upgrade --cask --greedy
/usr/local/bin/pueue add -- /usr/local/bin/brew cleanup
/usr/local/bin/pueue add -- /usr/local/bin/brew autoremove
/usr/local/bin/pueue add -- "$HOME/.local/bin/resetdock.sh"
/usr/local/bin/pueue add -- "$HOME/.local/share/mise/shims/bun" update --global
/usr/local/bin/pueue add -- /usr/local/bin/cargo install-update --all
/usr/local/bin/pueue add -- "$GOPATH/bin/gup" update
/usr/local/bin/pueue add -- /usr/local/bin/opam update
/usr/local/bin/pueue add -- /usr/local/bin/opam upgrade

