#!/usr/bin/env bash
source /home/ubuntu/.deploy-laravel-env
cd $DEPLOY_DIRECTORY/$DEPLOY_NAME

php artisan optimize:clear
php artisan optimize
