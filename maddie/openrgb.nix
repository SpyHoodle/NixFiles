{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    openrgb
  ];

  home.file.".xinitrc".text = ''
    # Set RGB perhipherals to white
    ${pkgs.openrgb}/bin/openrgb -c white -m static &
  '';
}
