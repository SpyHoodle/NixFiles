{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    imagemagick # Manipulates images
    libheif # Manage .heif files from phones
    gcolor2 # Color viewer and eyedropper
    ffmpeg # Video manipulator
  ];
}
