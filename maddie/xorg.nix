{ config, pkgs, ... }:

{
  # Run startx on tty1
  programs.zsh.profileExtra = ''
    # If on /dev/tty1 then run startx automatically
    if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
      exec ${pkgs.xorg.xinit}/bin/startx
    fi
  '';

  # Attempt to set keyboard layout
  home.keyboard = {
    layout = "gb";
    options = [
      "caps:escape"
    ];
  };

  # Attempt to set cursor
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.phinger-cursors;
    name = "phinger-cursors";
    size = 24;
  };

  # Force use of XDG Dir Spec
  home.sessionVariables = {
    /* XAUTHORITY = "${config.xdg.runtimeDir}/Xauthority"; */
    XCOMPOSECACHE = "${config.xdg.cacheHome}/x11/xcompose";
  };

  # Configure ~/.xinitrc
  programs.feh.enable = true;
  home.file.".xinitrc".text = ''
    # Monitor configuration
    ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-0 --noprimary --mode 2560x1440 --pos 2560x0 --rotate right
    ${pkgs.xorg.xrandr}/bin/xrandr --output DP-0 --primary --mode 2560x1440 --pos 0x560

    # Apply wallpaper
    ${pkgs.feh}/bin/feh --no-fehbg --bg-fill "$HOME/Pictures/Wallpapers/The Walking Dead/shane_1.jpg" --bg-fill "$HOME/Pictures/Wallpapers/The Walking Dead/shane_3.jpg"

    # Refresh xresources
    ${pkgs.xorg.xrdb}/bin/xrdb "$HOME/.Xresources"

    # Speed up repeated keypresses
    ${pkgs.xorg.xset}/bin/xset r rate 300 50

    # Set keyboard map and remap caps to escape
    ${pkgs.xorg.setxkbmap}/bin/setxkbmap -layout gb --option caps:escape

    # Start the window manager
    ${pkgs.openssh}/bin/ssh-agent ${pkgs.dbus}/bin/dbus-run-session ${pkgs.dwm}/bin/dwm
  '';

  xresources.properties = {
    "*.font" = "Iosevka:pixelsize=14:antialias=true:autohint=true";
  };
}
