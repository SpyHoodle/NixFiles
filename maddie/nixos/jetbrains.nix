{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains.clion
    jetbrains.goland
    jetbrains.webstorm
    jetbrains.datagrip
    jetbrains.rust-rover
    jetbrains.pycharm-professional
  ];
}
