{ config, pkgs, ... }:

{
  # Misc editors
  home.packages = with pkgs; [
    vis
  ];
}
