echo "Beginning setup of dotfiles and config."

# Remove old dotfiles and link new dotfiles

rm ~/.bash_profile
ln -s ~/github/dotfiles-config/.bash_profile ~/.bash_profile

rm ~/.bashrc
ln -s ~/github/dotfiles-config/.bashrc ~/.bashrc

rm ~/.emacs
ln -s ~/github/dotfiles-config/.emacs ~/.emacs

rm ~/.gitignore
ln -s ~/github/dotfiles-config/.gitignore ~/.gitignore

rm ~/.Rprofile
ln -s ~/github/dotfiles-config/.Rprofile ~/.Rprofile

mkdir ~/R/R-library-primary

rm ~/.Renviron
ln -s ~/github/dotfiles-config/dot_Renviron ~/.Renviron


# Modify power save mode in Gnome

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'


echo "Completed setup of dotfiles and other config."
