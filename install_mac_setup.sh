#!/bin/bash

# Install Homebrew
if [ ! -x "/usr/bin/make" ]; then
  if [ -x "/usr/bin/xcode-select" ]; then /usr/bin/xcode-select --install; fi
else
  echo "Homebrew requied the Xcode Command Line Tools (CLT) to install."
  echo "Please install this package and run this script again."
  exit 1
fi

if [ ! -x "/usr/local/bin/brew" ]; then 
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update

# Set CASKROOM environment varriable
export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"

# Install Ansible
brew install ansible

# Install ansible-lint
pip2 install ansible-lint

