# copy config files
cp -r .vim ~/.vim
cp .vimrc ~/.vimrc
cp .ideavimrc ~/.ideavimrc

cp .bash_profile ~/.bash_profile
cp .bash_profile ~/.bashrc

cp .gitconfig ~/.gitconfig

# install vundle & vim plugins
vim +PluginInstall +qall

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# manual steps:
#	download & setup iterm2
