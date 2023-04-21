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

      # Development
      "neovide"
      "pycharm"
      "webstorm"
      "clion"
      "goland"
      "appcode"
      "android-studio"
      "tower"

      # Learning
      "anki"

      # Tools
      "boop"
      "haptickey"
      "kdeconnect"
      "hazeover"
    ];
    masApps = {
      "Codye" = 1516894961;
      "Xcode" = 497799835;
    };
  };
}
