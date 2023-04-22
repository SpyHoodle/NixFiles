{ config, ... }:

{
  programs.ssh.extraConfig = ''
    Host *
      IdentityAgent /Users/maddie/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
  '';
}
