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
        name = "kde-mac/kde";
        clone_target = "https://invent.kde.org/packaging/homebrew-kde.git";
        force_auto_update = true;
      }
    ];
    casks = [
      # Media
      "syncplay"
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
      "pycharm"
      "webstorm"
      "clion"
      "goland"
      "datagrip"
      "rustrover"
      "fleet"
      "tower"
      "secretive"
      "sf-symbols"
      "iterm2"

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
      "Wireguard" = 1451685025;
      "Xcode" = 497799835;
      "One Thing" = 1604176982;
      "Today" = 6443714928;
      "Wipr" = 1320666476;
      "Vinegar" = 1591303229;
      "Noir" = 1592917505;
      /* "Element X" = 1631335820; */
    };
  };
}
