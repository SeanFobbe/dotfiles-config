#!/bin/bash

# Based on this SO answer: https://stackoverflow.com/questions/19576742/how-to-clone-all-repos-at-once-from-github

sudo dnf install curl jq git -y
sudo apt-get install curl jq git -y

cd ~/github || exit

curl -sL "https://api.github.com/users/SeanFobbe/repos?per_page=1000" | jq -r '.[]|.clone_url' | xargs -L1 git clone
