{ config, username, ... }:

{
  services.openssh = {
    enable = true;
    settings.permitRootLogin = "no";
    settings.passwordAuthentication = false;
  };
  programs.ssh.hostKeyAlgorithms = [ "sk-ssh-ed25519@openssh.com" "ssh-ed25519" ];
  users.users.${username}.openssh.authorizedKeys.keyFiles = [ ../../maddie/common/ssh/id_ed25519_sk.pub ];
}
