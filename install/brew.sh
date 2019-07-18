#!/bin/sh
# give me what I need, brew!

# get cask versions also
brew tap caskroom/versions

# development tools
brew install git
# Node stuff
brew install nodenv
# grab stable version of node
nodenv install 8.11.4
# convenience plugin for nodenv
git clone https://github.com/nodenv/nodenv-package-rehash.git "$(nodenv root)"/pluginsnodenv-package-rehash
nodenv package-hooks install --all
brew install yarn --ignore-dependencies
brew install ruby
brew install m-cli
brew install grep
brew install watchman
brew install exa
brew install fish
brew install carthage
brew cask install adoptopenjdk8

# apps
brew cask install alfred
brew cask install appcleaner
brew cask install google-chrome
brew cask install hammerspoon
brew cask install istat-menus
brew cask install iterm2
brew cask install kap
brew cask install firefox
brew cask install visual-studio-code-insiders
brew cask install slack
brew cask install realm-studio
