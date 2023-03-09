{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    signal-desktop # Signal client
    discord-canary # Discord client
    ripcord # Better discord client
    element # Matrix client
  ];
}
