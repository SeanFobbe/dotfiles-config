#!/bin/bash


# === Begin ===

echo
echo "====================================================================="
echo "BEGIN - Beginning setup of dotfiles, folders and other configuration."
echo "====================================================================="






# === Create Folders ===
echo
echo "=== Create Folders ==="
echo "Creates folders, if not already present. Prints message otherwise."
echo

for f in ~/R ~/R/R-library-primary ~/Sync ~/.newsboat
do
    if [ ! -d ${f} ]; then
	mkdir ${f}
	echo "Created ${f}."
	echo
    else
	echo "${f} already exists."
	echo
    fi
done





# === Dot Files ===
echo
echo "=== Dot Files ==="
echo "Removes old dot files, if present, and replaces them with links to the dot files in the local git repository."
echo

for f in .bash_profile .bashrc .emacs .gitignore .Rprofile .newsboat/config .newsboat/urls
do
    echo "--- ${f} ---"
    
    if [ -e ${f} ]
    then
	echo "Found old ${f}."
	rm ~/${f}
	echo "Deleted old ${f}."
    fi

    ln -s ~/github/dotfiles-config/${f} ~/${f}
    echo "Linked new ${f} from local git repository."
    echo
    
done



# === Git Config ===

git config --global user.name "Sean Fobbe"
git config --global pull.rebase false
git config --global core.editor vim
git config --global init.defaultBranch main
git config --global color.ui auto
git config --global receive.fsckObjects true



# === Deactivate Power Save Mode ===

echo
echo "=== Deactivate Power Save Mode ==="
echo "Note: can be reversed by using 'unmask' in the same command."
echo

sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

echo "Sleep, suspend, hibernate and hybrid-sleep deactivated."




# === END ===

echo
echo "======================"
echo "END - Setup completed."
echo "======================"
echo
