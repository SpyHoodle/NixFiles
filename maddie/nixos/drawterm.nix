{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    drawterm
  ];
}
