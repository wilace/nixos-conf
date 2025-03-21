{ lib, pkgs, ... }:

{
  # Select nixpkgs version.
  system.stateVersion = "24.11";

  # Enable nix-command and nix-flakes.
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Select internationalisation properties. (fallback)
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = lib.mkForce "jp106";
    useXkbConfig = false;
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    git
    wget
  ];
}
