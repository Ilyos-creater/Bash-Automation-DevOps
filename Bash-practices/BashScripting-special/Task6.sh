#!/bin/bash

# This script first upgrades the package data base, and then searches for upgradeable package data bases

echo "Upgrade the Packages"
sudo apt update

echo "Search for open upgrades"
sudo apt list --upgradable

