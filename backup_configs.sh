#!/bin/bash

CONFIG_DIR="/etc/nixos"
BACKUP_DIR="/etc/nixos/config_backups"

# Fetch the hostname (or other unique identifier) to create distinct backup filenames
HOSTNAME=$(hostname)

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Generate a hash of the current configuration
hash=$(nix-hash --flat --base32 "$CONFIG_DIR/configuration.nix")

# Check if the hash already exists in the backups (i.e., if the configuration is unique)
if ! grep -q "$hash" "$BACKUP_DIR/backup_hashes_${HOSTNAME}.txt"; then
    # Backup the configuration
    backup_file="${HOSTNAME}_config_backup_$(date +'%Y%m%d%H%M%S').nix"
    cp "$CONFIG_DIR/configuration.nix" "$BACKUP_DIR/$backup_file"
    echo "$hash" >> "$BACKUP_DIR/backup_hashes_${HOSTNAME}.txt"
fi
