#!/usr/bin/env bash
DEPLOY_BASE_DIRECTORY=/home/ubuntu/MY_SITE_NAME
DEPLOY_DIRECTORY="$DEPLOY_BASE_DIRECTORY"/releases
DEPLOY_NAME=$(date +"%Y%m%d%H%M%S")
GIT_REPO=git@github.com:USER/REPO.git

# Here we want to create a temp file with all our important environment variables. Essentially
# I'm using this file as a way to keep state throughout this deploy.
cat <<EOF > .deploy-laravel-env
export DEPLOY_BASE_DIRECTORY="$DEPLOY_BASE_DIRECTORY"
export DEPLOY_DIRECTORY="$DEPLOY_DIRECTORY"
export DEPLOY_NAME="$DEPLOY_NAME"
export GIT_REPO="$GIT_REPO"
EOF

cd $DEPLOY_DIRECTORY

# You'll see this pattern of `2>&1` across several scripts as sometimes programs emit things to stderr, and that
# makes the node-ssh (specifically ssh2) package angry. So the only reason we're redirecting all of stderr to stdout
# is so we can continue with the deploy.
# NOTE: Don't do this if the program will occasionally error due to some actual issue. This is done here because it's a well know fact git will do this.
git clone "$GIT_REPO" "$DEPLOY_NAME" 2>&1
