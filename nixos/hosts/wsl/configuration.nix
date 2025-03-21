{ config, pkgs, ... }:
let
  moduleDir = ../../modules;
in
{
  imports = [
    (moduleDir + "/common/base-config.nix")
    (moduleDir + "/common/wsl.nix")
    (moduleDir + "/common/sound.nix")
    (moduleDir + "/common/i18n.nix")
    (moduleDir + "/common/shell.nix")
    (moduleDir + "/services")
  ];

  # Define hostname.
  networking.hostName = "wsl";

  # Define a user account.
  users.users.nixos = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };
}
