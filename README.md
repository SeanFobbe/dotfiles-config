# Configuration and Dotfiles for Linux

This is a repository to store dotfiles and install scripts for my Linux configurations on Fedora and Debian.

# Usage

Dotfile and config installation assumes the presence of ~/github/dotfiles-config, therefore run in order:

```
# Clone repository
git clone https://github.com/SeanFobbe/dotfiles-config ~/github/dotfiles-config

# Change directory
cd ~/github/dotfiles-config

# Step 1: Install config
./01_install_config.sh            # Installs dotfiles and config

# Step 2: Install and update packages
./02_install_packages_debian.sh   # for Debian; installs preferred .deb, R and Python packages
./02_install_packages_fedora.sh   # for Fedora; installs preferred .rpm, R and Python packages

# Step 3: Clone all other Github repos
./03_git_clone_all.sh      # clones my personal repositories
```

# Warnings

- The R install script overwrites the .Renviron file with a set library path without the user being prompted; this is by design to ensure a clean .Renviron file when setting up a new system
- Many R packages require compilation due to C++ components, which can take several hours on weaker machines

# Sensitive Files

- .gitconfig (global) contains sensitive information and should be transferred between machines via secure means.
- .git-credentials stores personal access token (PAT) in plaintext and should not be used; prefer encrypted local storage options
- .Renviron stores R environment variables and should not be committed to git; part of .gitignore
