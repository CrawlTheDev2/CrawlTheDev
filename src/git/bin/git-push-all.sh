#!/bin/bash

set -eo pipefail

echo "Executing bash script"

echo "Staging all changes"
git add .

### Sperator
echo "---------------------------------------------"

# Remote
read -p "Remote: " VarRemote

# Branch
read -p "Branch: " VarBranch

# Commit Message
read -p "Commit Message: " VarCommit
git commit -m "$VarCommit"

### Sperator
echo "---------------------------------------------"

echo "Pushing"
git push -u $VarRemote $VarBranch

echo "(GIT) All changes pushed"
