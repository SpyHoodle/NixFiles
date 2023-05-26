{ config, pkgs, lib, ... }:

{
  qt = {
    enable = true;
    style = {
      package = pkgs.adwaita-qt;
      name = "adwaita-dark";
    };
  };

  home.sessionVariables = {
    QT_STYLE_OVERRIDE = "adwaita-dark";
  };
}
