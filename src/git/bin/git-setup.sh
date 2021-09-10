#!/bin/bash

set -eo pipefail

echo "Executing bash script"

### Sperator
echo "---------------------------------------------"

# Username
read -p "Username: " VarUsername
git config --global user.name "$VarUsername"

# Email
read -p "Email: " VarEmail
git config --global user.email "$VarEmail"

### Sperator
echo "---------------------------------------------"

echo "(GIT) Global setup completed"


