{ config, pkgs, ... }:

{
  # Misc editors
  home.packages = with pkgs; [
    vscode
    helix
    vis
  ];
}
