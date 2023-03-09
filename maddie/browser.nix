{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    tor-browser-bundle-bin
    librewolf
    amfora
    lynx
  ];
}
