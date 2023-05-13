{ config, pkgs, ... }:

{
  services.pcscd.enable = true;
  services.udev.packages = [ pkgs.yubikey-personalization pkgs.android-udev-rules ];
  security.pam = {
    services = {
      login.u2fAuth = true;
      doas.u2fAuth = true;
    };
    yubico = {
      enable = true;
      mode = "challenge-response";
      control = "optional";
    };
  };

  /* environment.systemPackages = with pkgs; [ */
  /*   yubioath-flutter */
  /*   yubikey-personalization */
  /* ]; */
}
