{ config, username, ... }:

{
  hardware.openrazer = {
    enable = true;
    users = [ "${username}" ];
    devicesOffOnScreensaver = false;
  };
}
