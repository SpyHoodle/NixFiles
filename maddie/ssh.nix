{ config, pkgs, username, ... }:

{
  # Drawterm
  home.packages = with pkgs; [
    drawterm
  ];

  # SSH
  programs.ssh = {
    enable = true;
    matchBlocks = {
      lambda = {
        identityFile = "~/.ssh/id_ed25519_sk";
        hostname = "home.spyhoodle.me";
        user = "maddie";
      };
      pinea = {
        identityFile = "~/.ssh/id_ed25519_sk";
        hostname = "ssh.pinea.dev";
        user = "maddie";
      };
    };
  };
}
