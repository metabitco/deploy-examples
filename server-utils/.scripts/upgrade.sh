#!/usr/bin/env bash

apt autoremove -
# This is a hack to ensure that `apt install` isn't going to be stuck in an error state.
apt install curl --fix-missing
apt autoclean -y
apt update -y
apt upgrade -y
apt autoremove -y
apt autoclean -y
