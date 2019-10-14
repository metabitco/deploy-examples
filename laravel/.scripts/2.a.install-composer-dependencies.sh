#!/usr/bin/env bash
source /home/ubuntu/.deploy-laravel-env
cd $DEPLOY_DIRECTORY/$DEPLOY_NAME

# Some of the output for my project's composer install will throw a bit out onto stderr too, but it's not a real error in my case.
composer install 2>&1
