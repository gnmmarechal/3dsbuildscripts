#!/bin/bash

#This script downloads all required files for the initial installation using git. It's literally "git clone <repo>"
#Git Repository
gitrepo="https://github.com/gnmmarechal/3dsbuildscripts"
gitdir="buildscr"


#Pre clean up
rm -rf "$gitdir"

#Instructions
git clone --recursive "$gitrepo" "$gitdir"
cd "$gitdir"
chmod +x *
cd ..
echo "Installed! cd to the directory to use the buildscripts!"
