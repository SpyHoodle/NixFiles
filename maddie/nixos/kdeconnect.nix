{ config, ... }:

{
  services.kdeconnect.enable = true;

  home.file.".xprofile".text = ''
    # Start kdeconnect when entering a graphical session
    systemctl restart --user kdeconnect.service &
  '';
}
