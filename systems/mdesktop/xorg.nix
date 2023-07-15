{ config, pkgs, ... }:

{
  services.xserver = {
    # Enable X11 windowing system
    enable = true;

    # Set gb X11 keymap
    layout = "gb";
    xkbOptions = "eurosign:e";

    displayManager = {
      # Use startx for starting window managers
      startx.enable = true;

      # Use KDE Plasma 5
      # plasma5.enable = true;
    };
  };
}
