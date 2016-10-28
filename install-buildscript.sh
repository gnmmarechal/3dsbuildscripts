#!/bin/bash

echo "Downloading buildscr..."
#This script downloads all required files for the initial installation using git. It's literally "git clone <repo>"
#Git Repository
echo "Setting variables..."
gitrepo="https://github.com/gnmmarechal/3dsbuildscripts"
gitdir="buildscr"

echo "Cleaning..."
#Pre clean up
rm -rf gitdir

echo "Cloning repository..."
#Instructions
git clone --recursive "$gitrepo" "$gitdir"
cd "$gitdir"
echo "Setting permissions..."
chmod +x *
cd ..
echo "Done! cd to the directory to use the buildscripts!"
