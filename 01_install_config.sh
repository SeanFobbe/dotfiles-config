# === Begin ===

echo "====================================================================="
echo "BEGIN - Beginning setup of dotfiles, folders and other configuration."
echo "====================================================================="




# === Dot Files ===

echo "\n=== Dot Files ===\n"
echo "Removes old dot files, if present, and replaces them with links to the dot files in the local git repository.\n\n"


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
    
done





# === Create Folders ===

echo "\n=== Create Folders ===\n"
echo "Creates folders, if not already present. Prints message otherwise.\n\n"

for f in ~/R/R-library-primary
do
    if [ ! -d ${f} ]; then
	mkdir ${f}
	echo "Created ${f}."
    else
	echo "${f} already exists."
    fi
done




# === Deactivate Power Save Mode ===

echo "\n=== Deactive Power Save Mode ===\n"
echo "Note: can be reversed by using 'unmask' in the same command.\n\n"

sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target





# === END ===

echo "\n======================"
echo "END - Setup completed."
echo "======================"
