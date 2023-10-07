{ config, pkgs, ... }:

{
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  hardware.nvidia.open = false;
  hardware.nvidia.modesetting.enable = false;
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.opengl.extraPackages = [
    (pkgs.runCommand "nvidia-icd" { } ''
      mkdir -p $out/share/vulkan/icd.d
      cp ${pkgs.linuxPackages.nvidia_x11}/share/vulkan/icd.d/nvidia_icd.x86_64.json $out/share/vulkan/icd.d/nvidia_icd.json
    '')
  ];
}
