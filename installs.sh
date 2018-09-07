# ZSH install
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing OMZ"
    curl -L http://install.ohmyz.sh | zsh
	cd ~/.oh-my-zsh/custom/plugins
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	cd ~
	touch .z
else
    echo "OMZ already installed"
fi

# If env is not local
if [ -f /opt/datadog/etc/environment ]; then
	rm -f ~/.zshrc.pre-oh-my-zsh
# else restore users zshrc
else
	rm -f ~/.zshrc
	mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
fi
touch ~/.z
