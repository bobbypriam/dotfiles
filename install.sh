# Clean up
echo "Cleaning up dotfiles..."
test -f ~/.bashrc && rm ~/.bashrc
test -f ~/.bash_profile && rm ~/.bash_profile
test -f ~/.gitconfig && rm ~/.gitconfig
test -f ~/.vimrc && rm ~/.vimrc

echo "Copying dotfiles..."
ln -sf ~/.dotfiles/common/bash/bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/common/bash/bashrc ~/.bashrc
ln -sf ~/.dotfiles/common/git/gitconfig ~/.gitconfig

mkdir -p ~/.vim
ln -sf ~/.dotfiles/common/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/common/vim/vundle-plugins ~/.vim/vundle-plugins

echo "Creating .bash_aliases and .custom.bashrc (if not exists)..."
test -f ~/.bash_aliases || touch ~/.bash_aliases
test -f ~/.custom.bashrc || touch ~/.custom.bashrc
