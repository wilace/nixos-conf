{ pkgs, ... }:
let
  moduleDir = ../../modules;
in
{
  imports = [
    (moduleDir + "/common/base.nix")
    (moduleDir + "/common/wsl.nix")
    (moduleDir + "/common/git.nix")
    (moduleDir + "/common/zsh.nix")
    (moduleDir + "/services")
  ];

  home = {
    username = "nixos";
    homeDirectory = "/home/nixos";
  };
}
