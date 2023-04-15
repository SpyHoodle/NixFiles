{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    pulsemixer # TUI sound mixer
    playerctl # Manages media players
    pamixer # CLI sound mixer
    yt-dlp # Media downloader
    cava # Music visualiser
  ];

  home.file.".local/bin/ytdlp-music" = {
    source = ./audio/ytdlp-music.sh;
    executable = true;
  };

  home.file.".local/bin/volume" = {
    source = ./audio/volume.sh;
    executable = true;
  };
}
