workflow "Build on push" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "samueldr/action-nix-build@master"
  env = {
    NIXPKGS_ALLOW_UNFREE = "1"
    NIX_PATH = "nixpkgs=channel:nixos-19.09"
  }
}
