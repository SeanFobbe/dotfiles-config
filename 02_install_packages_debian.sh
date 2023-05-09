#!/bin/bash

# Add Repositories

sudo apt-add-repository non-free
sudo apt-add-repository contrib


# Update Package List

sudo apt-get update


# Update System

sudo apt-get upgrade -y


# Install all Debian packages

sudo apt-get -y install $(cat packages-debian-full.txt)


# Install all Python packages

pip install $(cat packages-python-full.txt)
