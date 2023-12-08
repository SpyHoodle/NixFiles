{ config, pkgs, username, ... }:

{
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
      clicks = {
        identityFile = "~/.ssh/clickscodes";
        hostname = "git.clicks.codes";
        port = 29418;
        user = "maddie";
      };
    };
  };
}
