{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    slstatus
  ];

  home.file.".xprofile".text = ''
    # Start slstatus
    ${pkgs.slstatus}/bin/slstatus &
  '';

  home.file.".local/bin/statusbar" = {
    source = ./statusbar;
    executable = true;
  };

  home.sessionPath = [
    "$HOME/.local/bin/statusbar"
  ];
}
