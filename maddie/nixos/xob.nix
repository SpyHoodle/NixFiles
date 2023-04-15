{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    xob
  ];

  home.file.".xinitrc".text = ''
    # Create FIFO for xob
    rm -rf /tmp/volume.fifo
    mkfifo /tmp/volume.fifo

    # Start xob
    (tail -f /tmp/volume.fifo | xob) &
  '';

  xdg.configFile."xob" = {
    source = ./xob;
  };
}
