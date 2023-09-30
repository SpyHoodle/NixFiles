{ config, pkgs, ... }:

{
  programs.yt-dlp.enable = true;
  home.packages = with pkgs; [
    flac
  ];

  home.file.".local/bin/ytdlp-music" = {
    source = ./yt-dlp/ytdlp-music.sh;
    executable = true;
  };
}
