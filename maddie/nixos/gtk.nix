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
      package = pkgs.lounge-gtk-theme;
      name = "Lounge-night-compact";
    };
    iconTheme = {
      package = pkgs.whitesur-icon-theme;
      name = "WhiteSur-dark";
    };
  };

  home.packages = with pkgs; [
    gnome.zenity
    libsForQt5.breeze-gtk
  ];
}
