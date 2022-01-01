echo "Beginning setup of dotfiles and config."

#=== Dot Files ===
# This section removes old dot files, if present, and replaces them with links to the dot files in the local git repository.

for f in .bash_profile .bashrc .emacs .gitignore .Rprofile
do
    echo "=== ${f} ==="
    
    if [ -e ${f} ]
    then
	echo "Found old ${f}."
	rm ~/${f}
	echo "Deleted old ${f}."
    fi

    ln -s ~/github/dotfiles-config/${f} ~/${f}
    echo "Linked new ${f} from local git repository."
    
done


#=== Create Folders ===

mkdir ~/R/R-library-primary


#=== Power Save Mode in Gnome ===

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'


echo "Completed setup of dotfiles and other config."
