{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    pulsemixer # TUI sound mixer
    playerctl # Manages media players
    pamixer # CLI sound mixer
    cava # Music visualiser
  ];

  home.file.".local/bin/volume" = {
    source = ./audio/volume.sh;
    executable = true;
  };
}
