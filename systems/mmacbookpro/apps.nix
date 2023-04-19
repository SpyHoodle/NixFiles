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
      /* "popcorn-time" */
      "syncplay"
      "deluge"

      # Games
      /* "minecraft" */
      /* "prismlauncher" */

      # IDEs
      "neovide"
      "pycharm"
      "webstorm"
      "clion"
      "goland"
      "android-studio"
    ];
  };
}
