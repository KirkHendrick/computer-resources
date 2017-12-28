echo "Showing hidden files..."
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder

echo "Copying config files..."
cp -r .vim ~/.vim
cp .vimrc ~/.vimrc
cp .ideavimrc ~/.ideavimrc

cp .bash_profile ~/.bash_profile
cp .bash_profile ~/.bashrc

cp .gitconfig ~/.gitconfig

echo "Installing fonts..."
cp -r ubuntu-mono/*.ttf ~/Library/Fonts/

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing vim & vim plugins..."
brew install macvim --with-override-system-vim
vim +PluginInstall +qall

echo "Installing other utilities..."
brew install node ant mas archey

echo "Installing other applications..."
# Slack
mas install 803453959

cp -r Caffeine.app ~/Applications
cp -r Spectacle.app ~/Applications

echo "Launching applications..."
open ~/Applications/Caffeine.app
open ~/Applications/Spectacle.app

# manual steps:
#	download & setup iterm2
#	install Ubuntu Mono font
