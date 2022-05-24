# TODO: why no stdout of cmd?
# FROM nixos/nix
FROM nixpkgs/nix

# COPY shell.nix shell.nix
# TODO: install deps so their cached in image

# TODO: how to get files into the image?
# TODO: volume

# TODO: env vars?

CMD nix-shell --run 'ls && node server.js'
