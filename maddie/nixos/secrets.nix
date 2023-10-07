{ config, ... }:

{
  services.pass-secret-service = {
    enable = true;
    storePath = "${config.xdg.dataHome}/password-store";
  };

  home.file.".xprofile".text = ''
    # Restart pass-secret-service as it tends to start failed
    systemctl restart --user pass-secret-service.service &
  '';
}
