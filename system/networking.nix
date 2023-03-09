{ config, lib, ... }:

{
  # DHCP
  networking.useDHCP = lib.mkDefault true;

  # Hostname
  networking.hostName = "luna";

  # Enable wireless support & configuration
  networking.wireless.enable = true;
  networking.wireless.networks = {
    "BT-C5CPMR" = {
      psk = "hN3LtFrkp36bXc";
    };
  };
}
