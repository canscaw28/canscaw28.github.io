#!/bin/bash

# Install/Update Homebrew
echo Checking if Homebrew is installed
if [[ $(command -v brew) == "" ]]; then
  echo "Homebrew not found; Installing Homebrew."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed; Updating Homebrew."
  brew update
fi
