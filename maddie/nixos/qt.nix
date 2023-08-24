{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    libsForQt5.breeze-qt5
  ];

  qt = {
    enable = true;
    style = {
      package = pkgs.libsForQt5.breeze-qt5;
      name = "Breeze";
    };
  };

  home.sessionVariables = {
    QT_STYLE_OVERRIDE = "Breeze";
  };
}
