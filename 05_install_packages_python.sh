#!/bin/bash

# Install pip
sudo apt-get update
sudo apt-get install pip -y

# Install all Python packages
pip install $(cat packages-python-full.txt)
