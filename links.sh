#!/bin/bash
CDIR=~/.jumpbox-tools

rmlink(){
    rm -f $2
    ln -s $CDIR/$1 $2
}


if [ -f /opt/datadog/etc/environment ]; then
    # zsh
    rmlink zsh/env ~/.zshenv
    rmlink zsh/rc ~/.zshrc
    rmlink zsh/login ~/.zlogin
    # tools
    rmlink bin ~/.bin

    # ssh
    rmlink ssh/rc ~/.ssh/rc
    rmlink ssh/config ~/.ssh/config
fi

# zsh themes
mkdir -p ~/.oh-my-zsh/custom/themes
rmlink zsh/muse-dd.zsh-theme ~/.oh-my-zsh/custom/themes/muse-dd.zsh-theme
rmlink zsh/robbyrussell-dd.zsh-theme ~/.oh-my-zsh/custom/themes/robbyrussell-dd.zsh-theme
