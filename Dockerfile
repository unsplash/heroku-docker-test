FROM nixos/nix

CMD nix-shell  --run 'echo start && node -e "console.log('Hello, World!')"'