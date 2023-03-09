{ config, ... }:

{
  programs.firefox = {
    enable = true;
    profiles = {
      "maddie" = {
        name = "Maddie";
        bookmarks = [
          {
            name = "Home";
            bookmarks = [
              {
                name = "BT Home Hub";
                url = "http://192.168.1.254/";
              }
              {
                name = "Home Assistant";
                url = "http://192.168.1.105:8123/lovelace/0";
              }
              {
                name = "Security Cameras";
                url = "http://192.168.1.108/";
              }
              {
                name = "Fast";
                url = "https://fast.com/";
              }
            ];
          }
          {
            name = "Nix";
            bookmarks = [
              {
                name = "NixOS Packages";
                url = "https://search.nixos.org/packages";
              }
              {
                name = "NixOS Options";
                url = "https://search.nixos.org/options";
              }
            ];
          }
        ];
      };
    };
  };
}
