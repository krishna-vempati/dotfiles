#!/bin/sh

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-brew installed formulae
brew update
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names
brew install gawk
brew install grep --with-default-names
brew install bash
brew install bash-completion2
brew install htop

# Install other useful binaries
brew install git
brew install p7zip
brew install ssh-copy-id
brew install unison
brew install pv
brew install ag

# Remove outdated versions from the cellar
brew cleanup
