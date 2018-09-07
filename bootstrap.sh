#!/bin/bash

if [[ $SHELL != *"zsh" ]]
then
    echo "You need to have ZSH as your default shell !"
    exit
fi

# Clean everything
cd ~
# Don't delete .ssh otherwise you cannot get in!!
rm -rf .bin* .chef* .config* .oh-my-zsh
if [ -f /opt/datadog/etc/environment ]; then
    rm -rf .zcomp* .zsh* .cache* .lesshst
fi

# In case we are re-running it
rm -rf .jumpbox-tools .oh-my-zsh

# Clone ourselves
git clone https://github.com/lypnol/jumpbox-tools.git ~/.jumpbox-tools
cd ~/.jumpbox-tools

./installs.sh
./links.sh

exec zsh
. ~/.zshrc
