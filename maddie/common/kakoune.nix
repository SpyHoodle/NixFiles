{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    python310Packages.python-lsp-server
  ];
  programs.kakoune = {
    enable = true;
    config = {
      numberLines = {
        enable = true;
        relative = true;
      };
      scrollOff.lines = 3;
      showWhitespace.enable = false;
      tabStop = 4;
      colorScheme = "one-dark";
      ui = {
        statusLine = "top";
        assistant = "cat";
        enableMouse = true;
        setTitle = true;
      };
    };
    plugins = with pkgs.kakounePlugins; [
      kakoune-rainbow
      powerline-kak
      auto-pairs-kak
      pkgs.kak-lsp
    ];
    extraConfig = ''
      eval %sh{kak-lsp --kakoune -s $kak_session}  # Not needed if you load it with plug.kak.
      lsp-enable
    '';
  };
}
