{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    schildichat-desktop # Matrix client, fork of element
    signal-desktop # Signal client
    cinny-desktop # Pretty matrix client
    discord-canary # Discord client
    ripcord # Better discord client
    nheko # Better matrix client
  ];
}
