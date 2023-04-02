{ config, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    font-awesome
    nerdfonts
  ];

  fonts.fontDir.enable = true;
}
