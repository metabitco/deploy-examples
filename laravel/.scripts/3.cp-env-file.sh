#!/usr/bin/env bash
source /home/ubuntu/.deploy-laravel-env

cd $DEPLOY_DIRECTORY/$DEPLOY_NAME

cp "$DEPLOY_BASE_DIRECTORY"/.env .env
