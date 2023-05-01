{ config, pkgs, lib, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.packages = with pkgs; [
    neovide
  ];

  xdg.configFile."nvim" = {
    source = ./neovim;
    recursive = true;
  };
}
