#!/bin/sh

# Make sure we're using the latest Homebrew
brew update
brew tap homebrew/versions
brew tap homebrew/dupes

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
brew install bash-completion
brew install htop

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi

# Install other useful binaries
brew install git
brew install p7zip
brew install ssh-copy-id
brew install unison
brew install pv

# Remove outdated versions from the cellar
brew cleanup
