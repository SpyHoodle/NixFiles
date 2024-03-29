{ config, ... }:

{
  programs.eza = {
    enable = true;
    enableAliases = true;
    extraOptions = [
      "--group-directories-first"
      "--time-style=long-iso"
      "--git"
      "-h"
      "-g"
    ];
    icons = true;
  };
}
