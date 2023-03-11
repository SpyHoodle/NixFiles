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
    userEmail = "maddie@spyhoodle.me";
    signing = {
      key = "33CC62D0ED495156FF5FCC550C7CB348221D0AEF";
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
