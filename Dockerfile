# TODO: why no stdout of cmd?
# FROM nixos/nix
FROM nixpkgs/nix

COPY shell.nix shell.nix
COPY dist dist
# COPY node_modules node_modules
# COPY target-tsc-build target-tsc-build

# Cache deps
# Better for rollbacks, deps are part of image
RUN nix-shell --run 'echo yay'

# TODO: env vars?

CMD nix-shell --run 'ls && node dist/server.js'

# TODO: doc that we don't need to expose port, just use $PORT
# https://help.heroku.com/PPBPA231/how-do-i-use-the-port-environment-variable-in-container-based-apps
