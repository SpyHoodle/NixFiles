{ config, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    terminus-nerdfont
    fira-code
    fira-code-symbols
    dina-font
    iosevka
    jetbrains-mono
    font-awesome
    source-han-sans
    source-han-serif
    source-han-code-jp
    nerdfonts
  ];
}
