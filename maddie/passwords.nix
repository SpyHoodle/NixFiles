{ config, ... }:

{
  programs.password-store = {
    enable = true;
    settings = {
      PASSWORD_STORE_DIR = "${config.xdg.dataHome}/password-store";
    };
  };

  home.sessionVariables = {
    PASSWORD_STORE_DIR = "${config.xdg.dataHome}/password-store";
  };

  services.pass-secret-service = {
    enable = true;
    storePath = "${config.xdg.dataHome}/password-store";
  };
}
