{ config, ... }:

{
  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  system.defaults.NSGlobalDomain = {
    InitialKeyRepeat = 14;
    KeyRepeat = 1;
  };
}
