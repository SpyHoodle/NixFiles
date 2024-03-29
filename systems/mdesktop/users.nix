{ config, pkgs, username, ... }:

{
  users.users.${username} = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "Madeleine";
    extraGroups = [ "adbusers" "dialout" "libvirtd" "plugdev" ];
    openssh.authorizedKeys.keyFiles = [ ../../maddie/common/ssh/maddie.pub ];
  };
}
