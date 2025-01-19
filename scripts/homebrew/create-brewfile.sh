#!/bin/zsh
BREWFILE_BACKUP_LOCATION=~/mac-config/brewfiles
DATE=$(date +%d-%m-%Y)

cd /tmp
brew bundle dump --cask --tap --mas  --no-vscode
mv Brewfile "$BREWFILE_BACKUP_LOCATION/Brewfile-$DATE"
echo "Created Brewfile"