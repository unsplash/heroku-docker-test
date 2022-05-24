FROM nixos/nix

COPY shell.nix shell.nix

CMD nix-shell  --run 'echo start && node -e "console.log('Hello, World!')"'
