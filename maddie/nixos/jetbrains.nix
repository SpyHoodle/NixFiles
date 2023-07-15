{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains.clion
    jetbrains.goland
    jetbrains.webstorm
    jetbrains.datagrip
    jetbrains.pycharm-professional
  ];
}
