{ lib, pkgs, ... }:

{
  time.timeZone = "Asia/Tokyo";

  i18n = lib.mkForce {
    defaultLocale = "ja_JP.UTF-8";

    inputMethod = {
      enable = true;

      type = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-gtk
        fcitx5-mozc
      ];
    };
  };

  fonts = {
    packages = with pkgs; [
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      source-han-code-jp
    ];

    fontconfig.defaultFonts = {
      serif = [
        "Noto Serif CJK JP"
        "Noto Color Emoji"
      ];
      sansSerif = [
        "Noto Sans CJK JP"
        "Noto Color Emoji"
      ];
      monospace = [
        "Source Han Code JP"
        "Noto Color Emoji"
      ];
      emoji = [ "Noto Color Emoji" ];
    };

    fontDir.enable = true;
  };
}
