{ config, pkgs, ... }:

{
  # System-wide packages
  # I want these available for all users at all times
  environment.systemPackages = with pkgs; [
    # Xorg packages
    xorg.xinit
    xorg.xkill
    xorg.xprop
    xorg.xwininfo
    xorg.xrandr
    xdotool
    xclip

    # Processes
    killall
    appimage-run

    # Filesystems
    dosfstools
    btrfs-progs
    ntfs3g
    exfatprogs
    libimobiledevice
    ifuse

    # Archives
    zip
    unrar
    unzip
    p7zip

    # Cli tools
    wget
    fzf
    bat

    # XDG
    xdg-utils
    xdg-user-dirs

    # Git
    git
  ];
}
