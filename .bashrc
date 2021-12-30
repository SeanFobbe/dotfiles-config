# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


# Usage: gh-clone-user (user)
gh-clone-user() {
  curl -sL "https://api.github.com/users/$1/repos?per_page=1000" | jq -r '.[]|.clone_url' | xargs -L1 git clone
}
