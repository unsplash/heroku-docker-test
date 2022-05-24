FROM nixos/nix

COPY shell.nix shell.nix

RUN echo start0 && nix --version && nix-shell --run 'echo start1 && node --version'

CMD echo start2 && nix --version && nix-shell --run 'echo start3 && node --version'
