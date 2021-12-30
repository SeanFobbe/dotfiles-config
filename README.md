# Configuration and Dotfiles for Linux

This is a repository to store dotfiles and install scripts for my Linux configurations on Fedora and Debian.

# Usage

Dotfile and config installation assumes the presence of ~/github/dotfiles-config, therefore run:

```
mkdir ~/github
cd ~/github
git clone https://github.com/SeanFobbe/dotfiles-config
01_install_config.sh            # Installs dotfiles and config
02_install_packages_debian.sh   # use only on Debian; installs common .deb packages and dependencies for R packages
02_install_packages_fedora.sh   # use only on Fedora; installs common .rpm packages and dependencies for R packages
03_install_packages.R    # installs common R packages for my data science workflow
04_git_clone_all.sh      # clones my personal repositories
```

# Warnings

- The R install script overwrites the .Renviron file with a set library path without the user being prompted; this is by design to ensure a clean .Renviron file when setting up a new system
- Many R packages require compilation due to C++ components, which can take several hours on weaker machines

# Sensitive Files

- .gitconfig (global) contains sensitive information and should be transferred between machines via secure means.
- .git-credentials stores personal access token (PAT) in plaintext and should not be used; prefer encrypted local storage options
- .Renviron stores R environment variables and should not be committed to git; part of .gitignore
