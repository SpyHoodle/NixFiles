{ config, pkgs, username, ... }:

{
  services.mpd.enable = true;
  services.mpd.musicDirectory = "/home/${username}/Music";

  home.packages = with pkgs; [
    mpc_cli
  ];

  programs.ncmpcpp = {
    enable = true;
    settings = {
      ncmpcpp_directory = "~/.local/share/ncmpcpp";
    };
  };
}
