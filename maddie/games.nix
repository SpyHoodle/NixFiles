{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gzdoom # Modern doom runner
    pcsx2 # PS2 Emulator# PS2 Emulator# PS2 Emulator
    steam # Large games store
  ];
}
