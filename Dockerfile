FROM nixpkgs/nix

CMD echo start2 && nix --version && nix-shell --run 'echo start3 && node --version'
