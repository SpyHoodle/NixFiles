{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    virt-manager # Manages QEMU virtual machines
    bottles # GTK interface for wine
    wine # Windows emulation
  ];
}
