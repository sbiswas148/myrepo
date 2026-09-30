#!/bin/bash

# Configure Git Identity for the runner
git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

# Safely extract the current branch name from GitHub's environment variable
# GITHUB_REF_NAME provides the branch name directly (e.g., 'main', 'dev')
CURRENT_BRANCH=$GITHUB_REF_NAME

echo "Syncing branch: $CURRENT_BRANCH from GitHub to Azure DevOps..."

# Push the current branch cleanly to Azure DevOps (maps local branch to the matching remote branch)
git push --force https://$AZUSERNAME:$AZUREPAT@://azure.com HEAD:refs/heads/$CURRENT_BRANCH
