#!/bin/bash

# Update System

sudo dnf update -y


# Install all Fedora packages

sudo dnf -y install $(cat packages-fedora-full.txt)


# Install all R packages

Rscript install_packages.R


# Install all Python packages

pip install $(cat packages-python-full.txt)
