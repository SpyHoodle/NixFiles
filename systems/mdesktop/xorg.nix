{ config, pkgs, ... }:

{
  services.xserver = {
    # Enable X11 windowing system
    enable = true;

    # Set X11 keymap as GB
    layout = "gb";
    xkbOptions = "eurosign:e";

    displayManager = {
      # Use startx for starting window managers
      startx.enable = true;
    };
  };
}
