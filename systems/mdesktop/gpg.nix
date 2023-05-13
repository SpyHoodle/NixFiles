{ config, pkgs, ... }:

{
  # programs.gnupg.package = pkgs.gnupg22;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = false;
    pinentryFlavor = "gtk2";
  };
}
