#!/bin/bash

# Update System

sudo dnf update -y


# Install all Fedora packages

sudo dnf -y install $(cat packages-fedora-full.txt)

