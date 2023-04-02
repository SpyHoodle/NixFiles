{ config, username, pkgs, lib, ... }:

{
  programs.home-manager.enable = true;
  home = {
    inherit username;
    homeDirectory = lib.mkForce "/Users/${username}";
    stateVersion = "23.05";
  };

  # Install MacOS applications to the user environment if the targetPlatform is Darwin
  home.file."Applications/home-manager-linked".source = let
  apps = pkgs.buildEnv {
    name = "home-manager-applications";
    paths = config.home.packages;
    pathsToLink = "/Applications";
  };
  in lib.mkIf pkgs.stdenv.targetPlatform.isDarwin "${apps}/Applications";
}
