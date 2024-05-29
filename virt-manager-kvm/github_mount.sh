#!/bin/bash

echo "Creating mounting point"
sudo mkdir -p /mnt/github

echo "Mounting"
sudo mount -t virtiofs github_host /mnt/github/

echo "\nMounts"
df

echo "ALL DONE"

