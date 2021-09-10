#!/bin/bash

set -eo pipefail

echo "Executing bash script"

echo "Git initializing"
git init

### Sperator
echo "---------------------------------------------"

# Username
read -p 'Username: ' VarUsername

# Remote Name
read -p 'Remote Name: ' VarRemote

# Repo Name
read -p 'Repository Name: ' VarRepo

# Repo Name
read -p 'Branch: ' VarBranch
git branch -m $VarBranch

### Sperator
echo "---------------------------------------------"

echo "Remote adding"
git remote add $VarRemote "https://github.com/$VarUsername/$VarRepo.git"

echo "(GIT) Project setup completed"