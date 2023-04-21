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
      hooks = [
       {
         name = "WinSetOption";
         option = "filetype=nix";
         commands = ''
           set-option window indentwidth 2
           set-option window formatcmd nixpkgs-fmt
         '';
       }
     ];
    };
    plugins = with pkgs.kakounePlugins; [
      kakoune-rainbow
      powerline-kak
      auto-pairs-kak
      pkgs.kak-lsp
    ];
    extraConfig = ''
      hook global InsertChar \t %{ exec -draft h@ }
      eval %sh{kak-lsp --kakoune -s $kak_session}
      lsp-enable
    '';
  };
}
