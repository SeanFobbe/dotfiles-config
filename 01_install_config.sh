# === Begin ===

echo "====================================================================="
echo "BEGIN - Beginning setup of dotfiles, folders and other configuration."
echo "====================================================================="



# === Dot Files ===
echo
echo "=== Dot Files ==="
echo "Removes old dot files, if present, and replaces them with links to the dot files in the local git repository."
echo

for f in .bash_profile .bashrc .emacs .gitignore .Rprofile
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





# === Create Folders ===
echo
echo "=== Create Folders ==="
echo "Creates folders, if not already present. Prints message otherwise."
echo

for f in ~/R ~/R/R-library-primary ~/Sync
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
