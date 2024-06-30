#!/bin/bash

# Check if the packages file exists
if [[ ! -f packages ]]; then
  echo "Error: 'packages' file not found!"
  exit 1
fi

# Read the package names from the file and store them in an array
mapfile -t package_list < packages

# Update the package database
echo "Updating the package database..."
sudo dnf makecache

# Install each package from the list without weak dependencies
echo "Installing packages without weak dependencies..."
for package in "${package_list[@]}"; do
  echo "Installing $package..."
  sudo dnf install -y --setopt=install_weak_deps=False "$package"
done

echo "All packages installed successfully!"