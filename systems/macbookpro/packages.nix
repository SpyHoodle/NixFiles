{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Processes
    killall

    # Filesystems
    dosfstools

    # Archives
    zip
    unzip
    unrar
    p7zip

    # Cli tools
    wget
    fzf
    bat

    # Git
    git
  ];
}
