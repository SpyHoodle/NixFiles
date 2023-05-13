{ config, lib, ... }:

{
  system.stateVersion = "23.05";
  nixpkgs.hostPlatform = lib.mkDefault "aarch64-linux";
}
