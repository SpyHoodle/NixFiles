{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    dmenu
  ];

  home.file.".local/bin/dmenu" = {
    source = ./dmenu;
    executable = true;
    recursive = true;
  };

  home.sessionPath = [
    "$HOME/.local/bin/dmenu"
  ];
}
