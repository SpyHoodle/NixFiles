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

      # Use sddm for starting KDE
      # sddm.enable = true;
    };

    # Enable KDE Plasma 5
    /* desktopManager = {
      plasma5.enable = true;
    }; */
  };
}
