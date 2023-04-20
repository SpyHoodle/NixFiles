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
      {
        name = "kde-mac/kde";
        clone_target = "https://invent.kde.org/packaging/homebrew-kde.git";
        force_auto_update = true;
      }
    ];
    casks = [
      # Media
      /* "popcorn-time" */
      "syncplay"
      "deluge"
      "mpv"

      # Messaging
      "signal"
      "nheko"

      # Games
      "minecraft"
      "prismlauncher"

      # IDEs
      "neovide"
      "pycharm"
      "webstorm"
      "clion"
      "goland"
      "appcode"
      "android-studio"

      # Learning
      "anki"

      # Tools
      "boop"
      "haptickey"
      "kdeconnect"
    ];
  };
}
