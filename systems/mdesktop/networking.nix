{ config, lib, ... }:

{
  # DHCP
  networking.useDHCP = lib.mkDefault true;

  # Hostname
  networking.hostName = "MDesktop";

  # Enable wireless support & configuration
  networking.wireless.enable = true;
  networking.wireless.networks = {
    "BT-C5CPMR_5GEXT" = {
      psk = "hN3LtFrkp36bXc";
    };
  };
}
