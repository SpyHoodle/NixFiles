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
      key = "FA50688B9EB6D8AA070C8241C296DE8C9053683F";
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

    ignores = [
      "**/.DS_Store"
      "**/._.DS_Store"
      ".DS_Store"
      "._.DS_Store"
      "**/*.swp"
      "*.swp"
    ];
  };
}
