#!/usr/bin/env bash
source /home/ubuntu/.deploy-laravel-env
cd $DEPLOY_DIRECTORY/$DEPLOY_NAME

# Getting npm to run took a while to figure out, but as a last ditch effort to make it work I redirected everything to stdout...
# Still don't fully know why stderr gets touched here, other than
npm run dev 2>&1
