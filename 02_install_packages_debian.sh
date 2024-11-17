#!/bin/bash


# Update Package List

sudo apt-get update

sudo apt-get install software-properties-common -y

sudo apt-get update



# Add Repositories

sudo apt-add-repository non-free
sudo apt-add-repository contrib



# Update System

sudo apt-get upgrade -y


# Install all Debian packages

sudo apt-get install $(cat packages-debian-12-full.txt) -y


# Compile libsecret git credential helper
sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret
