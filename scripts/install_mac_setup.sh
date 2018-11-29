#!/bin/bash

# Install Homebrew
if [ ! -x /usr/bin/make ]; then
  if [ -x /usr/bin/xcode-select ]; then /usr/bin/xcode-select --install
    else
     echo "Homebrew requied the Xcode Command Line Tools (CLT) to install."
     echo "Please install this package and run this script again."
     exit 1
   fi
fi

if [ ! -x "/usr/local/bin/brew" ]; then 
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update

# Install Ansible
brew install ansible

