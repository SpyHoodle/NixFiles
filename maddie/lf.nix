{ config, pkgs, ... }:

{
  programs.lf = {
    enable = true;
    previewer.source = ./lf/scope;
    settings = {
      icons = true;
      hidden = true;
      number = true;
      relativenumber = true;
      preview = true;
    };
  };

  xdg.configFile = {
    "lf/icons" = {
      source = ./lf/icons;
    };
  };

  home.packages = with pkgs; [
    ueberzug
    file
  ];
}
