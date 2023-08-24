{ config, pkgs, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  # Setup bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.initrd.systemd.enable = true;

  # Setup crypto keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable LUKS boot devices
  boot.initrd.luks.devices."luks-c180a121-376a-432e-a661-f4be3cc23dfa".device = "/dev/disk/by-uuid/c180a121-376a-432e-a661-f4be3cc23dfa";
  boot.initrd.luks.devices."luks-16dda63d-9dce-4ef2-9da6-ee458ba3c44c".device = "/dev/disk/by-uuid/16dda63d-9dce-4ef2-9da6-ee458ba3c44c";
  boot.initrd.luks.devices."luks-c180a121-376a-432e-a661-f4be3cc23dfa".keyFile = "/crypto_keyfile.bin";

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  # Use the linux-zen kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;
}
