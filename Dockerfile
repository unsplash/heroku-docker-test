FROM nixos/nix

COPY shell.nix shell.nix

RUN nix-shell  --run 'echo start && node -e "console.log('Hello, World!')"'

CMD nix-shell  --run 'echo start && node -e "console.log('Hello, World!')"'
