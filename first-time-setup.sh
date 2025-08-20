boldGreen="\033[1;32m"
boldYellow="\033[1;33m"
boldRed="\033[1;31m"
boldPurple="\033[1;35m"
boldBlue="\033[1;34m"
noColor="\033[0m"

echo "Installing Homebrew..."

if ! xcode-select -p &>/dev/null; then
  echo
  echo -e "${boldPurple}>>>>>>>>>>>>>>>>>>>>>>>>>>${noColor}"
  echo "Installing xcode-select, this will take some time, please wait"
  echo -e "${boldYellow}A popup will show up, make sure you accept it${noColor}"
  xcode-select --install

  # Wait for xcode-select to be installed
  echo
  echo -e "${boldPurple}>>>>>>>>>>>>>>>>>>>>>>>>>>${noColor}"
  echo "Waiting for xcode-select installation to complete..."
  while ! xcode-select -p &>/dev/null; do
    sleep 20
  done
  echo
  echo -e "${boldGreen}xcode-select installed. Proceeding with Homebrew installation.${noColor}"
else
  echo
  echo -e "${boldGreen}xcode-select is already installed. Proceeding with Homebrew installation.${noColor}"
fi

if ! command -v brew &>/dev/null; then
  echo
  echo -e "${boldPurple}>>>>>>>>>>>>>>>>>>>>>>>>>>${noColor}"
  echo "Installing brew"
  echo "Enter your password below (if required)"
  # Only install brew if not installed yet
  echo
  echo -e "${boldPurple}>>>>>>>>>>>>>>>>>>>>>>>>>>${noColor}"
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo
  echo -e "${boldGreen}Homebrew installed successfully.${noColor}"
else
  echo
  echo -e "${boldGreen}Homebrew is already installed.${noColor}"
fi

echo "Installing utilities..."
brew install git node mas python3 tmux gh

echo "Installing essential casks..."
brew install --cask google-chrome google-drive obsidian obs discord slack raycast iterm2 rectangle vlc

echo "Installing non-essential casks..."
brew install --cask zen-browser

echo "Installing VS Code &  extensions..."
brew install --cask visual-studio-code

code --install-extension abdi.nordic-midnight
code --install-extension alefragnani.bookmarks
code --install-extension yzhang.markdown-all-in-one
code --install-extension pkief.material-icon-theme
code --install-extension christian-kohler.path-intellisense
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension salesforce.salesforcedx-vscode
code --install-extension vscodevim.vim
code --install-extension redhat.vscode-xml
code --install-extension anthropic.claude-code

echo "Installing fonts..."
brew install --cask font-jetbrains-mono font-ubuntu-mono

### Needs sudo

echo "Copying config files..."
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp .bash_profile ~/.bash_profile
cp .bash_profile ~/.bashrc
cp .gitconfig ~/.gitconfig

echo "Configuring MacOS settings..."
echo "Showing hidden files..."
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder

# echo "Installing other applications..."

# manual steps (for now)
# Seventeenlands

# notes from installing new mac
# sections aren't clear - add #### blocks or something to separate them
# macvim section didn't work - can be removed/updated to neovim
# separate scripts for the ones that need sudo
