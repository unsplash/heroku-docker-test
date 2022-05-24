FROM nixos/nix

COPY shell.nix shell.nix

RUN nix-shell --run 'echo start && node --version'

CMD nix-shell --run 'echo start && node --version'
