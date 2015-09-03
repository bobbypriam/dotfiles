# Clean up
echo "Cleaning up dotfiles..."
test -f ~/.bashrc && rm ~/.bashrc
test -f ~/.bash_profile && rm ~/.bash_profile
test -f ~/.gitconfig && rm ~/.gitconfig
test -f ~/.vimrc && rm ~/.vimrc

echo "Copying dotfiles..."
ln -s ~/.dotfiles/common/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/common/.bashrc ~/.bashrc
ln -s ~/.dotfiles/common/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/common/.vimrc ~/.vimrc

echo "Creating .bash_aliases and .custom.bashrc (if not exists)..."
test -f ~/.bash_aliases || touch ~/.bash_aliases
test -f ~/.custom.bashrc || touch ~/.custom.bashrc
