{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    tesseract5 # Gets text from images
    maim # X11 screenshot tool
  ];

  home.file.".local/bin/sst" = {
    source = ./screenshot/sst.sh;
    executable = true;
  };
}
