{ config, pkgs, ... }:

{
  programs.yt-dlp.enable = true;

  home.file.".local/bin/ytdlp-music" = {
    source = ./yt-dlp/ytdlp-music.sh;
    executable = true;
  };
}
