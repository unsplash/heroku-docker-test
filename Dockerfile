FROM nixos/nix

CMD nix-shell --run 'node --version'