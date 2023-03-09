{ config, ... }:

{
  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/0eecf0db-00f9-48db-9d62-0ade3f3edd90";
      fsType = "ext4";
    };

  fileSystems."/boot/efi" =
    {
      device = "/dev/disk/by-uuid/0042-9914";
      fsType = "vfat";
    };

  fileSystems."/mnt/data" =
    {
      device = "/dev/disk/by-uuid/5c0f035b-fe9e-4c7f-a137-34b0168e1dde";
      fsType = "ext4";
    };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/9be243bf-4f48-42e3-9827-bba2ef04ffa4"; }];
}
