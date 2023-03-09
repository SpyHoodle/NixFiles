{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    font = {
      package = pkgs.iosevka;
      name = "Iosevka";
      size = 10;
    };
    theme = {
      package = pkgs.gruvbox-dark-gtk;
      name = "gruvbox-dark";
    };
    iconTheme = {
      package = pkgs.zafiro-icons;
      name = "Zafiro-icons-Dark";
    };
  };
}
