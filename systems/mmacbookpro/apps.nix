{ config, ... }:

{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
    };
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
      "element"

      # Games
      "minecraft"
      "prismlauncher"
      "tetrio"
      "osu"

      # Design
      "sketch"

      # Development
      "zed"
      "neovide"
      "pycharm"
      "rustrover"
      "webstorm"
      "clion"
      "goland"
      "appcode"
      "datagrip"
      "android-studio"
      "fleet"
      "tower"
      "secretive"
      "visual-studio-code"
      "sf-symbols"

      # Learning
      "anki"
      "obsidian"

      # Tools
      "boop"
      "syncthing"
      "haptickey"
      "kdeconnect"
      "hazeover"
      "yubico-authenticator"
    ];
    masApps = {
      "Codye" = 1516894961;
      /* "Xcode" = 497799835; */
    };
  };
}
