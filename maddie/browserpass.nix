{ config, pkgs, ... }:

{
  programs.browserpass = {
    enable = true;
    browsers = [
      "chromium"
      "firefox"
    ];
  };
}
