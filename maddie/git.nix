{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gitkraken
    gh
  ];

  home.file.".local/bin/git-sync" = {
    source = ./git/git-sync.sh;
    executable = true;
  };

  programs.git = {
    enable = true;
    lfs.enable = true;

    userName = "Madeleine";
    userEmail = "spyhoodle@icloud.com";
    signing = {
      key = "A8B3F646462101EEA4493B3164FAA9959751687D";
      signByDefault = true;
      gpgPath = "gpg2";
    };

    aliases = {
      graph = "log --graph --oneline --decorate";
      unstage = "reset HEAD --";
      co = "checkout";
      br = "branch";
      ci = "commit";
      st = "status";
      ps = "push";
    };

    extraConfig = {
      init.defaultBranch = "development";
      pull.rebase = "merges";
    };
  };
}
