{ config, username, ... }:

{
  services.syncthing = {
    enable = true;
    user = "${username}";
    group = "users";
    dataDir = "/home/${username}";
    configDir = "/home/${username}/.config/syncthing";
    guiAddress = "0.0.0.0:8384";
    overrideFolders = true;
    folders = {
      "Documents" = {
        path = "/home/${username}/Documents";
      };
      "Pictures" = {
        path = "/home/${username}/Pictures";
      };
      "Videos" = {
        path = "/home/${username}/Videos";
      };
      "Music" = {
        path = "/home/${username}/Music";
      };
    };
  };
}
