# Clean up
echo "Cleaning up dotfiles..."
test -f ~/.bashrc && rm ~/.bashrc
test -f ~/.bash_profile && rm ~/.bash_profile
test -f ~/.gitconfig && rm ~/.gitconfig
test -f ~/.vimrc && rm ~/.vimrc
test -f ~/.bash_aliases && rm ~/.bash_aliases
test -f ~/.custom.bashrc && rm ~/.custom.bashrc

echo "Copying dotfiles..."
ln -s ~/.dotfiles/common/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/common/.bashrc ~/.bashrc
ln -s ~/.dotfiles/common/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/common/.vimrc ~/.vimrc

echo "Creating custom .bash_aliases and .custom.bashrc..."
touch ~/.bash_aliases
touch ~/.custom.bashrc
