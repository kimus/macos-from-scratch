#!/bin/sh

source scripts/utils.sh

cd "$(dirname "$0")"
DOTFILES_ROOT=$(pwd -P)

set -eEuo pipefail
trap 'ec=$?; fail "Failed to setup your computer; exit $ec' ERR SIGINT SIGHUP SIGQUIT SIGTERM

#echo ''
#prompt "This will setup your computer. Are you sure [yN]?"
#if [[ ! $REPLY =~ ^[Yy]$ ]]; then
#  exit 0
#fi
#echo ''

warn "Setting up your computer..."


# Check for Homebrew and install if we don't have it
echo ''
if test ! $(which brew); then
  info "Installing 'Homebrew'..."
  export HOMEBREW_INSTALL_FROM_API=1
  export HOMEBREW_NO_ANALYTICS=1
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  warn "Homebrew alredy installed!"
  execute "Updating Homebrew..."
  brew update
fi
success "Homebrew ready!"


echo ''
info "Installing all Tools and Applications (Brewfile)..."
if [ -f Brewfile.lock.json ]; then
  warn "Tools and Applications alredy processed!"
  prompt "Do you want to run int again [yN]?"
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew bundle
  fi
else
  #brew tap homebrew/bundle
  brew bundle
fi
success "Tools and Applications ready!"


echo ''
info "Restoring 'Develop' from backup"
# Create a Develop directory
mkdir -p $HOME/Develop
# TODO: rsync ?
warn "Restoring 'Develop' from backup is not implemented yet!"


echo ''
info "Please provide your Bitwarden credentials..."
session=$(bw login --raw)
if [ x"$session" != x"" ]; then
  export BW_SESSION="$session"
  echo ''
  info "Installing dotfiles (Chezmoi)..."
  if [ -d ~/.local/share/chezmoi ]; then
    warn "Chezmoi already initialized! Nothing to be done."
  else
    execute "Initializing dotfiles with chezmoui..."
    chezmoi init --apply "${GITHUB_USERNAME:-$USER}"
  fi

  execute "Adding SSH keys..."
  ssh-add
  
  success "dotfiles ready!"
else
  warn "Something went wrong setting up Bitwarden!"
  fail "dotfiles not set!"
fi


echo ''
info "Installing Visual Studio Code extensions..."
for ext in $(cat vscodefile); do
  NODE_OPTIONS="--no-deprecation" code --install-extension $ext
done
success "VSC extensions are ready!"


if [[ $OSTYPE == 'darwin'* ]]; then
  echo ''
  execute "Setting up MacOS system preferences..."
  source osxfile
  success "MacOS ready!"
fi