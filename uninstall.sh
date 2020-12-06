#!/bin/bash

# setup color formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

# Uninstall Homebrew?
read -e -p "${BLUE}==>${WHITE} Would you like to uninstall Homebrew? (y/n)\n${NC}" answer
if [[ "$answer" == [Yy]* ]]
  printf "  Uninstalling Homebrew."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
fi
