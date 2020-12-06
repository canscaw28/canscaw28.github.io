#!/bin/bash

# setup color formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

# Install/Update Homebrew
printf "${BLUE}==>${WHITE} Checking if Homebrew is installed\n${NC}"
if [[ $(command -v brew) == "" ]]; then
  printf "  Homebrew not found.\n  Installing Homebrew.\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  printf "  Homebrew already installed.\n  Updating Homebrew.\n"
  brew update
fi
