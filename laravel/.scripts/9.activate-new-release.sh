#!/usr/bin/env bash
source /home/ubuntu/.deploy-laravel-env
cd "$DEPLOY_BASE_DIRECTORY"

rm "$DEPLOY_BASE_DIRECTORY/current"
ln -svf "$DEPLOY_DIRECTORY/$DEPLOY_NAME" "$DEPLOY_BASE_DIRECTORY/current"

