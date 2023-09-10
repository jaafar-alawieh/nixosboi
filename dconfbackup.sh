#!/usr/bin/env bash

if [ "$1" == "nix" ]; then
    # Run the dconf dump and dconf2nix commands
    dconf dump / | dconf2nix > dconf.nix

    # Copy the dconf.nix file to /etc/nixos/
    sudo cp dconf.nix /etc/nixos/dconf.nix
else
    # Run the dconf dump and dconf2nix commands
    dconf dump / | dconf2nix > dconf.nix
fi

Make sure to save this script to a file (e.g., dconfbackup), and then make it executable using:

bash

chmod +x dconfbackup

You can now use the script as described in my previous response, replacing ./dconfbackup with dconfbackup when running the script.
