{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    amfora
    lynx
  ];
}
