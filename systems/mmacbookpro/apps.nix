{ config, ... }:

{
  homebrew = {
    enable = true;
    taps = [
      {
        name = "popcorn-official/popcorn-desktop";
        clone_target = "https://github.com/popcorn-official/popcorn-desktop.git";
        force_auto_update = true;
      }
    ];
    casks = [
      # Media
      "popcorn-time"
      "syncplay"

      # Games
      /* "minecraft" */
      /* "prismlauncher" */

      # IDEs
      "pycharm"
      "webstorm"
      "clion"
      "goland"
      "android-studio"
    ];
  };
}
